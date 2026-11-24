:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_files)).
:- use_module(library(http/http_json)).
:- use_module(library(http/thread_httpd)).
:- ensure_loaded('knowledge_base.pl').

:- prolog_load_context(directory, PrologDirectory),
   directory_file_path(PrologDirectory, '..', SourceDirectory),
   directory_file_path(SourceDirectory, '..', ProjectDirectory),
   directory_file_path(ProjectDirectory, 'frontend', FrontendDirectory),
   absolute_file_name(FrontendDirectory, WebDirectory, [file_type(directory)]),
   asserta(web_directory(WebDirectory)).

:- dynamic web_directory/1.

:- http_handler(root(api/options), options_handler, []).
:- http_handler(root(api/recommend), recommend_handler, [method(post)]).
:- http_handler(root(.), serve_web_file, [prefix]).

start_server :-
    start_server(8000).

start_server(Port) :-
    http_server(http_dispatch, [port(Port), ip('127.0.0.1')]),
    format('Food Recommendation Expert System is running at http://127.0.0.1:~d/~n', [Port]),
    repeat,
    thread_get_message(Message),
    (   Message == stop
    ->  http_stop_server(Port, [])
    ;   fail
    ).

serve_web_file(Request) :-
    web_directory(WebDirectory),
    http_reply_from_files(WebDirectory, [], Request).

options_handler(_Request) :-
    findall(Category, food(_, Category, _), Categories0),
    sort(Categories0, Categories),
    findall(Ingredient,
            (food(_, _, Required), member(Ingredient, Required)),
            Ingredients0),
    sort(Ingredients0, Ingredients),
    findall(_{name: Dish, category: Category, ingredients: Required,
              recipe_details: Details},
            (food(Dish, Category, Required),
             recipe_details_json(Dish, Details)),
            Foods),
    length(Foods, DishCount),
    reply_json_dict(_{
        categories: Categories,
        ingredients: Ingredients,
        foods: Foods,
        dish_count: DishCount
    }).

recommend_handler(Request) :-
    http_read_json_dict(Request, Input),
    (   valid_recommendation_input(Input, Category, Ingredients)
    ->  ranked_recommendations(Category, Ingredients, Results),
        length(Results, Count),
        reply_json_dict(_{results: Results, count: Count})
    ;   reply_json_dict(_{error: "Choose a valid category and known ingredients."},
                        [status(400)])
    ).

valid_recommendation_input(Input, Category, Ingredients) :-
    is_dict(Input),
    get_dict(category, Input, CategoryText),
    string(CategoryText),
    get_dict(ingredients, Input, IngredientTexts),
    is_list(IngredientTexts),
    maplist(string, IngredientTexts),
    normalize_text_atom(CategoryText, Category),
    maplist(normalize_text_atom, IngredientTexts, Ingredients),
    findall(KnownCategory, food(_, KnownCategory, _), Categories0),
    sort([any|Categories0], Categories),
    memberchk(Category, Categories),
    findall(Ingredient,
            (food(_, _, Required), member(Ingredient, Required)),
            KnownIngredients0),
    sort(KnownIngredients0, KnownIngredients),
    forall(member(Ingredient, Ingredients),
           memberchk(Ingredient, KnownIngredients)).

normalize_text_atom(Text, Atom) :-
    normalize_space(string(Trimmed), Text),
    string_lower(Trimmed, Lower),
    atom_string(Atom, Lower).

recipe_details_json(Dish,
                   _{available: true, estimated: Estimated,
                     servings: Servings, ingredients: Ingredients,
                     instructions: Instructions}) :-
    recipe_details(Dish, Servings, Items, Instructions),
    !,
    maplist(recipe_item_json, Items, Ingredients),
    (   memberchk(Dish, [fried_bangus, inihaw_na_bangus, sinigang_na_bangus])
    ->  Estimated = false
    ;   Estimated = true
    ).

recipe_details_json(_,
                   _{available: false, estimated: true, servings: 0,
                     ingredients: [], instructions: []}).

recipe_item_json(item(Quantity, Unit, Name, Optional),
                 _{quantity: Quantity, unit: Unit, name: Name,
                   optional: Optional}).
