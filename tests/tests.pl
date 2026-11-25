
:- consult('../src/prolog/knowledge_base.pl').

:- begin_tests(food_recommendation).

test(egg_fried_rice) :-
    recommend(egg_fried_rice, rice, [rice, egg, oil]).

test(garlic_fried_rice) :-
    recommend(garlic_fried_rice, rice, [rice, garlic, oil]).

test(missing_ingredient, [fail]) :-
    recommend(egg_fried_rice, rice, [rice, egg]).

test(wrong_category, [fail]) :-
    recommend(boiled_egg, pasta, [egg, water]).

test(any_category) :-
    once(recommend(boiled_egg, any, [egg, water])).

test(no_ingredients, [fail]) :-
    recommend(garlic_pasta, pasta, []).

test(vegetable_fried_rice) :-
    recommend(vegetable_fried_rice, rice, [rice, carrot, peas, corn, oil]).

test(chicken_garlic_rice) :-
    recommend(chicken_garlic_rice, rice, [chicken, rice, garlic, oil]).

test(cheese_omelet) :-
    recommend(cheese_omelet, breakfast, [egg, cheese, oil]).

test(banana_pancakes) :-
    recommend(banana_pancakes, breakfast, [banana, flour, egg, milk]).

test(chicken_pasta) :-
    recommend(chicken_pasta, pasta, [pasta, chicken, tomato, oil]).

test(creamy_cheese_pasta) :-
    recommend(creamy_cheese_pasta, pasta, [pasta, cheese, milk]).

test(peanut_butter_sandwich) :-
    recommend(peanut_butter_sandwich, snack, [bread, peanut_butter]).

test(egg_sandwich) :-
    recommend(egg_sandwich, snack, [bread, egg, mayonnaise]).

test(missing_new_recipe_ingredient, [fail]) :-
    recommend(vegetable_fried_rice, rice, [rice, carrot, peas, oil]).

test(new_recipe_wrong_category, [fail]) :-
    recommend(chicken_pasta, rice, [pasta, chicken, tomato, oil]).

test(shrimp_fried_rice) :-
    recommend(shrimp_fried_rice, rice, [rice, shrimp, egg, oil]).

test(beef_rice_bowl) :-
    recommend(beef_rice_bowl, rice, [beef, rice, soy_sauce]).

test(french_toast) :-
    recommend(french_toast, breakfast, [bread, egg, milk]).

test(fruit_oatmeal) :-
    recommend(fruit_oatmeal, breakfast, [oats, milk, banana, honey]).

test(tomato_basil_pasta) :-
    recommend(tomato_basil_pasta, pasta, [pasta, tomato, basil, oil]).

test(tuna_pasta) :-
    recommend(tuna_pasta, pasta, [pasta, tuna, mayonnaise]).

test(grilled_cheese_sandwich) :-
    recommend(grilled_cheese_sandwich, snack, [bread, cheese, butter]).

test(avocado_toast) :-
    recommend(avocado_toast, snack, [bread, avocado, oil]).

test(tofu_rice_bowl) :-
    recommend(tofu_rice_bowl, rice, [tofu, rice, soy_sauce]).

test(missing_second_batch_ingredient, [fail]) :-
    recommend(fruit_oatmeal, breakfast, [oats, milk, banana]).

test(second_batch_wrong_category, [fail]) :-
    recommend(avocado_toast, breakfast, [bread, avocado, oil]).

test(chicken_fajitas) :-
    recommend(chicken_fajitas, dinner,
              [chicken, red_onion, red_pepper, smoked_paprika, cumin, garlic,
               olive_oil, lime, tortillas, salsa]).

test(chicken_fajitas_missing_lime, [fail]) :-
    recommend(chicken_fajitas, dinner,
              [chicken, red_onion, red_pepper, smoked_paprika, cumin, garlic,
               olive_oil, tortillas, salsa]).

test(classic_beef_lasagne) :-
    recommend(classic_beef_lasagne, pasta,
              [olive_oil, bacon, onion, celery, carrot, garlic, beef,
               tomato_puree, tomato, honey, lasagne_sheets, creme_fraiche,
               mozzarella, parmesan]).

test(classic_beef_lasagne_missing_parmesan, [fail]) :-
    recommend(classic_beef_lasagne, pasta,
              [olive_oil, bacon, onion, celery, carrot, garlic, beef,
               tomato_puree, tomato, honey, lasagne_sheets, creme_fraiche,
               mozzarella]).

test(easy_pancakes) :-
    recommend(easy_pancakes, breakfast, [flour, egg, milk, oil]).

test(easy_pancakes_missing_oil, [fail]) :-
    recommend(easy_pancakes, breakfast, [flour, egg, milk]).

test(american_pancakes) :-
    recommend(american_pancakes, breakfast,
              [self_raising_flour, baking_powder, sugar, egg, butter, milk, oil]).

test(american_pancakes_missing_baking_powder, [fail]) :-
    recommend(american_pancakes, breakfast,
              [self_raising_flour, sugar, egg, butter, milk, oil]).

test(chicken_adobo) :-
    recommend(chicken_adobo, dinner,
              [chicken, soy_sauce, vinegar, garlic, bay_leaf,
               black_peppercorns, sugar, water, oil]).

test(chicken_adobo_missing_vinegar, [fail]) :-
    recommend(chicken_adobo, dinner,
              [chicken, soy_sauce, garlic, bay_leaf, black_peppercorns,
               sugar, water, oil]).

test(pork_adobo) :-
    recommend(pork_adobo, dinner,
              [pork, soy_sauce, vinegar, garlic, bay_leaf,
               black_peppercorns, water]).

test(pork_adobo_missing_bay_leaves, [fail]) :-
    recommend(pork_adobo, dinner,
              [pork, soy_sauce, vinegar, garlic, black_peppercorns, water]).

test(lentil_soup) :-
    recommend(lentil_soup, soup,
              [olive_oil, onion, carrot, celery, garlic, bay_leaf,
               dried_oregano, dried_basil, lentils, water, tomato, spinach,
               red_wine_vinegar]).

test(lentil_soup_missing_lentils, [fail]) :-
    recommend(lentil_soup, soup,
              [olive_oil, onion, carrot, celery, garlic, bay_leaf,
               dried_oregano, dried_basil, water, tomato, spinach,
               red_wine_vinegar]).

test(fried_bangus) :-
    recommend(fried_bangus, fish,
              [bangus, vinegar, garlic, black_peppercorns, salt, oil]).

test(fried_bangus_missing_vinegar, [fail]) :-
    recommend(fried_bangus, fish,
              [bangus, garlic, black_peppercorns, salt, oil]).

test(inihaw_na_bangus) :-
    recommend(inihaw_na_bangus, fish,
              [bangus, tomato, red_onion, ginger, salt, black_pepper]).

test(inihaw_na_bangus_missing_ginger, [fail]) :-
    recommend(inihaw_na_bangus, fish,
              [bangus, tomato, red_onion, salt, black_pepper]).

test(sinigang_na_bangus) :-
    recommend(sinigang_na_bangus, fish,
              [bangus, sinigang_mix, kangkong, sitaw, okra,
               long_green_pepper, tomato, onion, fish_sauce,
               black_pepper, water]).

test(sinigang_na_bangus_missing_fish, [fail]) :-
    recommend(sinigang_na_bangus, fish,
              [sinigang_mix, kangkong, sitaw, okra, long_green_pepper,
               tomato, onion, fish_sauce, black_pepper, water]).

test(pork_sinigang) :-
    recommend(pork_sinigang, soup,
              [pork, tamarind, kangkong, sitaw, eggplant, okra, tomato,
               long_green_pepper, onion, water, fish_sauce, black_pepper]).

test(tinolang_manok) :-
    recommend(tinolang_manok, soup,
              [chicken, malunggay, hot_pepper_leaves, black_pepper,
               green_papaya, water, chicken_cube, onion, garlic, ginger,
               fish_sauce, oil]).

test(tortang_talong) :-
    recommend(tortang_talong, breakfast,
              [eggplant, egg, salt, black_pepper, oil]).

test(ginisang_monggo) :-
    recommend(ginisang_monggo, dinner,
              [mung_beans, garlic, pork, spinach, tomato, onion, shrimp,
               fish_sauce, water, beef_cube, chicharon, black_pepper]).

test(bicol_express) :-
    recommend(bicol_express, dinner,
              [pork, coconut_milk, coconut_cream, shrimp_paste, garlic,
               thai_chili, ginger, onion, serrano_pepper]).

test(filipino_recipes_have_measured_details) :-
    forall(member(Dish, [pork_sinigang, tinolang_manok, tortang_talong,
                         ginisang_monggo, bicol_express]),
           (recipe_details(Dish, Servings, Ingredients, Steps),
            Servings > 0, Ingredients = [_|_], Steps = [_|_])).

test(bangus_wrong_category, [fail]) :-
    recommend(fried_bangus, soup,
              [bangus, vinegar, garlic, black_peppercorns, salt, oil]).

test(fish_recommendations_rank_by_match) :-
    ranked_recommendations(fish,
                           [bangus, vinegar, garlic, black_peppercorns,
                            salt, oil],
                           [Top|_]),
    get_dict(name, Top, fried_bangus),
    get_dict(score, Top, 100).

test(fried_bangus_has_measured_ingredients_and_steps) :-
    recipe_details(fried_bangus, 2, Ingredients, Instructions),
    memberchk(item("1/2", "cup", "white vinegar", false), Ingredients),
    assertion(length(Instructions, 4)).

test(inihaw_na_bangus_has_measured_ingredients_and_steps) :-
    recipe_details(inihaw_na_bangus, 4, Ingredients, Instructions),
    memberchk(item("1", "tablespoon", "ginger, minced", false), Ingredients),
    memberchk(item("1 lemon or 3 calamansi", "", "", true), Ingredients),
    assertion(length(Instructions, 5)).

test(sinigang_na_bangus_has_measured_ingredients_and_steps) :-
    recipe_details(sinigang_na_bangus, 3, Ingredients, Instructions),
    memberchk(item("2 1/2", "tablespoons", "fish sauce", false), Ingredients),
    assertion(length(Instructions, 6)).

test(avocado_toast_has_measured_ingredients_and_steps) :-
    recipe_details(avocado_toast, 1, Ingredients, Instructions),
    memberchk(item("2", "slices", "bread", false), Ingredients),
    memberchk(item("1/2", "medium", "ripe avocado", false), Ingredients),
    memberchk(item("1", "teaspoon", "oil", false), Ingredients),
    assertion(length(Instructions, 3)).

test(expanded_catalog_has_exactly_100_unique_recipes) :-
    findall(Dish, expanded_recipe(Dish, _, _), Dishes),
    sort(Dishes, UniqueDishes),
    assertion(length(Dishes, 100)),
    assertion(length(UniqueDishes, 100)).

test(expanded_recommendations_use_their_ingredients) :-
    recommend(pancit_bihon, dinner,
              [rice_noodles, pork, chicken, snow_peas, carrot, cabbage,
               celery, onion, garlic, chicken_powder, soy_sauce, water, oil]),
    recommend(maja_blanca, dessert,
              [cornstarch, coconut_milk, evaporated_milk, sweet_corn,
               sugar, cheese]).

test(source_based_noodle_recipes_have_details) :-
    forall(member(Dish, [pancit_bihon, pancit_canton, pancit_palabok,
                         pancit_lomi]),
           (recipe_details(Dish, Servings, Ingredients, Steps),
            Servings > 0, Ingredients = [_|_], Steps = [_|_])).

test(expanded_catalog_recipes_have_ingredients_and_details_or_fallback) :-
    forall(food(Dish, _, _),
           ( ( recipe_details(Dish, Servings, Ingredients, Instructions)
             -> integer(Servings), Servings > 0, Ingredients = [_|_],
                Instructions = [_|_],
                forall(member(item(Quantity, Unit, Name, _), Ingredients),
                       (string(Quantity), string(Unit), string(Name)))
             ;  expanded_recipe(Dish, _, Required), Required = [_|_]
             ) )).

test(fajitas_wrong_category, [fail]) :-
    recommend(chicken_fajitas, rice,
              [chicken, red_onion, red_pepper, smoked_paprika, cumin, garlic,
               olive_oil, lime, tortillas, salsa]).

test(soup_wrong_category, [fail]) :-
    recommend(lentil_soup, dinner,
              [olive_oil, onion, carrot, celery, garlic, bay_leaf,
               dried_oregano, dried_basil, lentils, water, tomato, spinach,
               red_wine_vinegar]).

test(partial_match_score_and_missing) :-
    recommendation_match(egg_fried_rice, rice, [rice], Score, Missing),
    assertion(Score =:= 33),
    assertion(Missing == [egg, oil]).

test(no_match_without_ingredients, [fail]) :-
    recommendation_match(egg_fried_rice, rice, [], _, _).

test(partial_match_category_filter, [fail]) :-
    recommendation_match(egg_fried_rice, pasta, [rice], _, _).

test(recommendations_rank_by_score) :-
    ranked_recommendations(rice, [rice, egg, oil, garlic], [Top|_]),
    get_dict(name, Top, egg_fried_rice),
    get_dict(score, Top, 100).

:- end_tests(food_recommendation).
