
:- use_module(library(readutil)).
:- consult('knowledge_base.pl').

main :-
    nl,
    writeln('======================================'),
    writeln(' FOOD RECOMMENDATION EXPERT SYSTEM'),
    writeln('======================================'),
    writeln('Choose a category:'),
    writeln('any, rice, breakfast, pasta, snack, dinner, soup, fish, dessert'),
    write('Category: '),
    read_line_to_string(user_input, CategoryInput),
    normalize_space(string(CategoryText), CategoryInput),
    string_lower(CategoryText, LowerCategory),
    atom_string(Category, LowerCategory),

    nl,
    writeln('Enter ingredients separated by commas.'),
    writeln('Example: rice, egg, oil'),
    write('Ingredients: '),
    read_line_to_string(user_input, IngredientInput),
    split_string(IngredientInput, ',', ' ', Pieces),
    maplist(normalize_ingredient, Pieces, Ingredients),

    nl,
    writeln('Recommended Foods:'),
    findall(Dish,
            recommend(Dish, Category, Ingredients),
            Dishes),
    show_results(Dishes).

normalize_ingredient(Text, Ingredient) :-
    normalize_space(string(Trimmed), Text),
    string_lower(Trimmed, Lower),
    atom_string(Ingredient, Lower).

show_results([]) :-
    writeln('No matching food found.'),
    writeln('Try another category or more ingredients.').

show_results([Dish|Rest]) :-
    format('- ~w~n', [Dish]),
    show_remaining(Rest).

show_remaining([]).

show_remaining([Dish|Rest]) :-
    format('- ~w~n', [Dish]),
    show_remaining(Rest).
