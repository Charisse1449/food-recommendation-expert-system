
% Food Recommendation Expert System
% Knowledge Base: Facts and Rules

% food(Dish, Category, RequiredIngredients).

food(egg_fried_rice, rice, [rice, egg, oil]).
food(garlic_fried_rice, rice, [rice, garlic, oil]).
food(tomato_omelet, breakfast, [egg, tomato, oil]).
food(boiled_egg, breakfast, [egg, water]).
food(garlic_pasta, pasta, [pasta, garlic, oil]).
food(tuna_sandwich, snack, [bread, tuna, mayonnaise]).
food(cheese_sandwich, snack, [bread, cheese]).
food(banana_oatmeal, breakfast, [banana, oats, water]).
food(chicken_rice_bowl, rice, [chicken, rice, oil]).
food(tomato_pasta, pasta, [pasta, tomato, oil]).
food(vegetable_fried_rice, rice, [rice, carrot, peas, corn, oil]).
food(chicken_garlic_rice, rice, [chicken, rice, garlic, oil]).
food(cheese_omelet, breakfast, [egg, cheese, oil]).
food(banana_pancakes, breakfast, [banana, flour, egg, milk]).
food(chicken_pasta, pasta, [pasta, chicken, tomato, oil]).
food(creamy_cheese_pasta, pasta, [pasta, cheese, milk]).
food(peanut_butter_sandwich, snack, [bread, peanut_butter]).
food(egg_sandwich, snack, [bread, egg, mayonnaise]).
food(shrimp_fried_rice, rice, [rice, shrimp, egg, oil]).
food(beef_rice_bowl, rice, [beef, rice, soy_sauce]).
food(french_toast, breakfast, [bread, egg, milk]).
food(fruit_oatmeal, breakfast, [oats, milk, banana, honey]).
food(tomato_basil_pasta, pasta, [pasta, tomato, basil, oil]).
food(tuna_pasta, pasta, [pasta, tuna, mayonnaise]).
food(grilled_cheese_sandwich, snack, [bread, cheese, butter]).
food(avocado_toast, snack, [bread, avocado, oil]).
food(tofu_rice_bowl, rice, [tofu, rice, soy_sauce]).
food(chicken_fajitas, dinner,
     [chicken, red_onion, red_pepper, smoked_paprika, cumin, garlic,
      olive_oil, lime, tortillas, salsa]).
food(classic_beef_lasagne, pasta,
     [olive_oil, bacon, onion, celery, carrot, garlic, beef, tomato_puree,
      tomato, honey, lasagne_sheets, creme_fraiche, mozzarella, parmesan]).
food(easy_pancakes, breakfast, [flour, egg, milk, oil]).
food(american_pancakes, breakfast,
     [self_raising_flour, baking_powder, sugar, egg, butter, milk, oil]).
food(chicken_adobo, dinner,
     [chicken, soy_sauce, vinegar, garlic, bay_leaf, black_peppercorns,
      sugar, water, oil]).
food(pork_adobo, dinner,
     [pork, soy_sauce, vinegar, garlic, bay_leaf, black_peppercorns, water]).
food(lentil_soup, soup,
     [olive_oil, onion, carrot, celery, garlic, bay_leaf, dried_oregano,
      dried_basil, lentils, water, tomato, spinach, red_wine_vinegar]).
food(fried_bangus, fish,
     [bangus, vinegar, garlic, black_peppercorns, salt, oil]).
food(inihaw_na_bangus, fish,
     [bangus, tomato, red_onion, ginger, salt, black_pepper]).
food(sinigang_na_bangus, fish,
     [bangus, sinigang_mix, kangkong, sitaw, okra, long_green_pepper,
      tomato, onion, fish_sauce, black_pepper, water]).

% Additional recipes using expanded ingredients.
food(potato_omelet, breakfast, [potato, egg, onion, oil]).
food(cabbage_stir_fry, dinner, [cabbage, garlic, soy_sauce, oil]).
food(eggplant_omelet, breakfast, [eggplant, egg, onion, oil]).
food(creamy_coconut_chicken, dinner, [chicken, coconut_milk, garlic, ginger]).
food(mushroom_fried_rice, rice, [rice, mushroom, garlic, oil]).
food(bell_pepper_chicken, dinner, [chicken, bell_pepper, onion, soy_sauce]).
food(cucumber_salad, snack, [cucumber, vinegar, onion, salt]).
food(chili_garlic_noodles, pasta, [pasta, chili, garlic, oil]).
food(potato_carrot_soup, soup, [potato, carrot, onion, water]).
food(fish_coconut_stew, fish, [fish, coconut_milk, ginger, onion]).
food(zucchini_stir_fry, dinner, [zucchini, garlic, soy_sauce, oil]).

% Measured ingredients and concise cooking steps for the Bangus recipes.
% item(Quantity, Unit, DisplayName, Optional).

recipe_details(fried_bangus, 2,
     [item("1 large boneless", "", "bangus (milkfish)", false),
      item("1/2", "cup", "white vinegar", false),
      item("4", "cloves", "garlic, crushed", false),
      item("1/2", "teaspoon", "whole peppercorns", false),
      item("1/2", "teaspoon", "salt", false),
      item("1", "cup", "cooking oil", false)],
     ["Stir the vinegar, garlic, peppercorns, and salt together.",
      "Place the fish in the marinade, cover, and refrigerate for 8 to 12 hours.",
      "Heat the oil over medium heat. Fry the fish for about 5 minutes per side, until browned and cooked through.",
      "Serve hot. Take care when frying because the marinade can make the oil splatter."]).

recipe_details(inihaw_na_bangus, 4,
     [item("1", "piece", "milkfish (bangus)", false),
      item("1", "piece", "ripe tomato, diced", false),
      item("1", "piece", "red onion, diced", false),
     item("1 lemon or 3 calamansi", "", "", true),
      item("1", "tablespoon", "ginger, minced", false),
      item("2", "teaspoons", "salt", false),
      item("1/2", "teaspoon", "ground black pepper", false)],
     ["Wash the fish and pat it dry. Rub salt inside its cavity.",
      "Mix the tomato, onion, and ginger. Add lemon juice if desired and the black pepper.",
      "Stuff the mixture into the fish.",
      "Grill over medium heat for 10 to 12 minutes per side, until cooked through.",
      "Serve hot."]).

recipe_details(sinigang_na_bangus, 3,
     [item("2", "pounds", "bangus (milkfish), cleaned and sliced", false),
      item("40", "grams", "sinigang sa sampaloc mix", false),
      item("1", "bunch", "kangkong", false),
      item("12", "pieces", "sitaw, cut into short lengths", false),
      item("6", "pieces", "okra", false),
      item("2", "pieces", "long green pepper", false),
      item("1", "medium", "tomato, wedged", false),
      item("1", "medium", "yellow onion, wedged", false),
      item("2 1/2", "tablespoons", "fish sauce", false),
      item("1/4", "teaspoon", "ground black pepper", false),
      item("2", "quarts", "water", false)],
     ["Bring the water to a boil in a pot with the tomato and onion.",
      "Add the bangus, cover, and simmer over medium heat for 8 to 12 minutes.",
      "Stir in the sinigang mix and cook for 2 minutes.",
      "Add the long green peppers, sitaw, and okra. Cover and cook for 5 to 7 minutes.",
      "Gently stir in the fish sauce and black pepper.",
      "Add the kangkong, cover, turn off the heat, and let it stand for 5 minutes before serving."]).

recipe_details(egg_fried_rice, 2,
     [item("1", "cup", "cooked rice", false),
      item("1", "large", "egg", false),
      item("1", "teaspoon", "oil", false)],
     ["Heat the oil in a pan over medium heat.",
      "Add the egg and stir until softly scrambled.",
      "Add the cooked rice and stir-fry until hot."]).

recipe_details(garlic_fried_rice, 2,
     [item("1", "cup", "cooked rice", false),
      item("2", "cloves", "garlic, minced", false),
      item("1", "teaspoon", "oil", false)],
     ["Heat the oil in a pan and cook the garlic briefly until fragrant.",
      "Add the cooked rice and stir-fry until hot."]).

recipe_details(tomato_omelet, 1,
     [item("2", "large", "eggs", false),
      item("1", "medium", "tomato, diced", false),
      item("1", "teaspoon", "oil", false)],
     ["Beat the eggs and stir in the diced tomato.",
      "Heat the oil in a pan, pour in the egg mixture, and cook until set.",
      "Fold the omelet and serve."]).

recipe_details(boiled_egg, 1,
     [item("1", "large", "egg", false),
      item("2", "cups", "water", false)],
     ["Place the egg in a small pot and add enough water to cover it.",
      "Bring the water to a boil, then simmer for 9 to 12 minutes.",
      "Cool the egg in cold water before peeling."]).

recipe_details(garlic_pasta, 2,
     [item("200", "grams", "pasta", false),
      item("2", "cloves", "garlic, minced", false),
      item("1", "tablespoon", "oil", false)],
     ["Cook the pasta in boiling water until tender, then drain.",
      "Warm the oil in a pan and cook the garlic briefly.",
      "Add the pasta and toss until coated and hot."]).

recipe_details(tuna_sandwich, 1,
     [item("2", "slices", "bread", false),
      item("1", "small can", "tuna, drained", false),
      item("1", "tablespoon", "mayonnaise", false)],
     ["Mix the drained tuna with the mayonnaise.",
      "Spread the tuna mixture over one slice of bread and top with the other slice."]).

recipe_details(cheese_sandwich, 1,
     [item("2", "slices", "bread", false),
      item("2", "slices", "cheese", false)],
     ["Place the cheese between the bread slices.",
      "Serve as is, or toast in a pan until the bread is crisp and the cheese softens."]).

recipe_details(banana_oatmeal, 1,
     [item("1/2", "cup", "rolled oats", false),
      item("1", "cup", "water", false),
      item("1", "medium", "banana, sliced", false)],
     ["Bring the water to a gentle boil and stir in the oats.",
      "Cook, stirring, for 5 minutes or until creamy.",
      "Top with the sliced banana."]).

recipe_details(chicken_rice_bowl, 1,
     [item("1", "cup", "cooked rice", false),
      item("100", "grams", "chicken, diced", false),
      item("1", "teaspoon", "oil", false)],
     ["Heat the oil in a pan and cook the chicken until fully cooked through.",
      "Serve the chicken over the cooked rice."]).

recipe_details(tomato_pasta, 2,
     [item("200", "grams", "pasta", false),
      item("2", "medium", "tomatoes, chopped", false),
      item("1", "tablespoon", "oil", false)],
     ["Cook the pasta according to its package directions and drain.",
      "Heat the oil in a pan, add the tomatoes, and cook until softened.",
      "Add the pasta and toss until hot."]).

recipe_details(vegetable_fried_rice, 2,
     [item("2", "cups", "cooked rice", false),
      item("1/2", "cup", "diced carrot", false),
      item("1/2", "cup", "peas", false),
      item("1/2", "cup", "corn", false),
      item("1", "tablespoon", "oil", false)],
     ["Heat the oil in a pan and cook the carrot until beginning to soften.",
      "Add the peas and corn and cook until hot.",
      "Stir in the cooked rice and stir-fry until heated through."]).

recipe_details(chicken_garlic_rice, 2,
     [item("2", "cups", "cooked rice", false),
      item("150", "grams", "chicken, diced", false),
      item("2", "cloves", "garlic, minced", false),
      item("1", "tablespoon", "oil", false)],
     ["Heat the oil in a pan and cook the chicken until fully cooked through.",
      "Add the garlic and cook briefly until fragrant.",
      "Stir in the cooked rice and heat through."]).

recipe_details(cheese_omelet, 1,
     [item("2", "large", "eggs", false),
      item("1/4", "cup", "grated cheese", false),
      item("1", "teaspoon", "oil", false)],
     ["Beat the eggs and stir in the grated cheese.",
      "Heat the oil in a pan, pour in the egg mixture, and cook until set.",
      "Fold the omelet and serve."]).

recipe_details(banana_pancakes, 2,
     [item("1", "medium", "banana, mashed", false),
      item("1/2", "cup", "flour", false),
      item("1", "large", "egg", false),
      item("1/4", "cup", "milk", false)],
     ["Mash the banana, then whisk it with the egg and milk.",
      "Stir in the flour just until combined.",
      "Cook small portions in a lightly greased pan over medium heat, turning once."]).

recipe_details(chicken_pasta, 2,
     [item("200", "grams", "pasta", false),
      item("150", "grams", "chicken, diced", false),
      item("2", "medium", "tomatoes, chopped", false),
      item("1", "tablespoon", "oil", false)],
     ["Cook the pasta according to its package directions and drain.",
      "Heat the oil in a pan and cook the chicken until fully cooked through.",
      "Add the tomatoes and cook until softened, then stir in the pasta."]).

recipe_details(creamy_cheese_pasta, 2,
     [item("200", "grams", "pasta", false),
      item("1/2", "cup", "grated cheese", false),
      item("1/2", "cup", "milk", false)],
     ["Cook the pasta according to its package directions and drain.",
      "Warm the milk in a pan over low heat and stir in the cheese until melted.",
      "Add the pasta and stir until coated."]).

recipe_details(peanut_butter_sandwich, 1,
     [item("2", "slices", "bread", false),
      item("2", "tablespoons", "peanut butter", false)],
     ["Spread the peanut butter evenly over one slice of bread.",
      "Top with the second slice, cut, and serve."]).

recipe_details(egg_sandwich, 1,
     [item("2", "slices", "bread", false),
      item("1", "large", "egg", false),
      item("1", "tablespoon", "mayonnaise", false)],
     ["Boil the egg for 9 to 12 minutes, cool it, then peel and mash it.",
      "Mix the egg with the mayonnaise and spread it on the bread.",
      "Top with the second slice and serve."]).

recipe_details(shrimp_fried_rice, 2,
     [item("2", "cups", "cooked rice", false),
      item("150", "grams", "peeled shrimp", false),
      item("1", "large", "egg", false),
      item("1", "tablespoon", "oil", false)],
     ["Heat the oil in a pan and cook the shrimp until opaque and cooked through.",
      "Push the shrimp aside, scramble the egg in the pan, then stir together.",
      "Add the cooked rice and stir-fry until hot."]).

recipe_details(beef_rice_bowl, 1,
     [item("1", "cup", "cooked rice", false),
      item("150", "grams", "beef, thinly sliced", false),
      item("1", "tablespoon", "soy sauce", false)],
     ["Cook the beef in a hot pan until browned and cooked through.",
      "Stir in the soy sauce and heat briefly.",
      "Serve the beef over the cooked rice."]).

recipe_details(french_toast, 1,
     [item("2", "slices", "bread", false),
      item("1", "large", "egg", false),
      item("1/4", "cup", "milk", false)],
     ["Whisk the egg and milk together in a shallow bowl.",
      "Dip both sides of each bread slice in the egg mixture.",
      "Cook in a lightly greased pan over medium heat until golden on both sides."]).

recipe_details(fruit_oatmeal, 1,
     [item("1/2", "cup", "rolled oats", false),
      item("1", "cup", "milk", false),
      item("1", "medium", "banana, sliced", false),
      item("1", "tablespoon", "honey", false)],
     ["Bring the milk to a gentle simmer and stir in the oats.",
      "Cook, stirring, for about 5 minutes or until creamy.",
      "Top with banana and drizzle with honey."]).

recipe_details(tomato_basil_pasta, 2,
     [item("200", "grams", "pasta", false),
      item("2", "medium", "tomatoes, chopped", false),
      item("2", "tablespoons", "chopped basil", false),
      item("1", "tablespoon", "oil", false)],
     ["Cook the pasta according to its package directions and drain.",
      "Heat the oil in a pan and cook the tomatoes until softened.",
      "Stir in the pasta and basil, then serve."]).

recipe_details(tuna_pasta, 2,
     [item("200", "grams", "pasta", false),
      item("1", "small can", "tuna, drained", false),
      item("2", "tablespoons", "mayonnaise", false)],
     ["Cook the pasta according to its package directions, then drain and cool slightly.",
      "Stir the tuna and mayonnaise through the pasta.",
      "Serve warm or chilled."]).

recipe_details(grilled_cheese_sandwich, 1,
     [item("2", "slices", "bread", false),
      item("2", "slices", "cheese", false),
      item("1", "tablespoon", "butter", false)],
     ["Place the cheese between the bread slices and spread butter on the outside.",
      "Cook in a pan over medium-low heat, turning once, until golden and the cheese melts."]).

recipe_details(avocado_toast, 1,
     [item("2", "slices", "bread", false),
      item("1/2", "medium", "ripe avocado", false),
      item("1", "teaspoon", "oil", false)],
     ["Toast the bread until crisp.",
      "Mash the avocado and spread it over the toast.",
      "Drizzle with oil and serve."]).

recipe_details(tofu_rice_bowl, 1,
     [item("1", "cup", "cooked rice", false),
      item("150", "grams", "firm tofu, cubed", false),
      item("1", "tablespoon", "soy sauce", false)],
     ["Pan-fry the tofu in a lightly oiled pan until golden on several sides.",
      "Add the soy sauce and toss to coat.",
      "Serve the tofu over the cooked rice."]).

recipe_details(chicken_fajitas, 4,
     [item("500", "grams", "chicken breast, sliced", false),
      item("1", "medium", "red onion, sliced", false),
      item("1", "medium", "red pepper, sliced", false),
      item("1", "teaspoon", "smoked paprika", false),
      item("1", "teaspoon", "ground cumin", false),
      item("2", "cloves", "garlic, minced", false),
      item("1", "tablespoon", "olive oil", false),
      item("1", "piece", "lime", false),
      item("8", "small", "tortillas", false),
      item("1/2", "cup", "salsa", false)],
     ["Toss the chicken with the paprika, cumin, garlic, olive oil, and lime juice.",
      "Cook the chicken in a hot pan until fully cooked through.",
      "Add the onion and pepper and cook until tender-crisp.",
      "Serve in warm tortillas with salsa."]).

recipe_details(classic_beef_lasagne, 6,
     [item("1", "tablespoon", "olive oil", false),
      item("100", "grams", "bacon, chopped", false),
      item("1", "medium", "onion, diced", false),
      item("1", "stalk", "celery, diced", false),
      item("1", "medium", "carrot, diced", false),
      item("2", "cloves", "garlic, minced", false),
      item("500", "grams", "ground beef", false),
      item("2", "tablespoons", "tomato puree", false),
      item("400", "grams", "chopped tomatoes", false),
      item("1", "teaspoon", "honey", false),
      item("9", "sheets", "lasagne sheets", false),
      item("200", "grams", "creme fraiche", false),
      item("125", "grams", "mozzarella, grated", false),
      item("25", "grams", "parmesan, grated", false)],
     ["Heat the oil in a pan and cook the bacon, onion, celery, carrot, and garlic until softened.",
      "Add the beef and cook until browned. Stir in the tomato puree, chopped tomatoes, and honey, then simmer until thickened.",
      "Layer the meat sauce, lasagne sheets, and creme fraiche in an oven-safe dish. Finish with mozzarella and parmesan.",
      "Bake at 180 C (350 F) until bubbling and the pasta is tender, about 35 to 45 minutes."]).

recipe_details(easy_pancakes, 2,
     [item("1", "cup", "plain flour", false),
      item("1", "large", "egg", false),
      item("3/4", "cup", "milk", false),
      item("1", "tablespoon", "oil", false)],
     ["Whisk the flour, egg, milk, and oil together until smooth.",
      "Pour small portions into a lightly oiled pan over medium heat.",
      "Cook until bubbles appear, flip, and cook the other side until golden."]).

recipe_details(american_pancakes, 2,
     [item("1", "cup", "self-raising flour", false),
      item("1", "teaspoon", "baking powder", false),
      item("1", "tablespoon", "sugar", false),
      item("1", "large", "egg", false),
      item("2", "tablespoons", "melted butter", false),
      item("3/4", "cup", "milk", false),
      item("1", "teaspoon", "oil for the pan", false)],
     ["Mix the flour, baking powder, and sugar in a bowl.",
      "Whisk in the egg, melted butter, and milk until just combined.",
      "Cook small portions in a lightly oiled pan over medium heat, turning when bubbles appear."]).

recipe_details(chicken_adobo, 4,
     [item("1", "kilogram", "chicken pieces", false),
      item("1/2", "cup", "soy sauce", false),
      item("1/2", "cup", "vinegar", false),
      item("6", "cloves", "garlic, crushed", false),
      item("2", "pieces", "bay leaf", false),
      item("1", "teaspoon", "black peppercorns", false),
      item("1", "tablespoon", "sugar", false),
      item("1", "cup", "water", false),
      item("1", "tablespoon", "oil", false)],
     ["Combine the chicken, soy sauce, vinegar, garlic, bay leaves, peppercorns, sugar, and water in a pot.",
      "Bring to a boil, then cover and simmer until the chicken is fully cooked and tender.",
      "Remove the lid and simmer until the sauce reaches your preferred thickness."]).

recipe_details(pork_adobo, 4,
     [item("1", "kilogram", "pork shoulder, cubed", false),
      item("1/2", "cup", "soy sauce", false),
      item("1/2", "cup", "vinegar", false),
      item("6", "cloves", "garlic, crushed", false),
      item("2", "pieces", "bay leaf", false),
      item("1", "teaspoon", "black peppercorns", false),
      item("1", "cup", "water", false)],
     ["Combine the pork, soy sauce, vinegar, garlic, bay leaves, peppercorns, and water in a pot.",
      "Bring to a boil, then cover and simmer until the pork is tender and fully cooked.",
      "Uncover and simmer until the sauce reduces slightly."]).

recipe_details(lentil_soup, 4,
     [item("1", "tablespoon", "olive oil", false),
      item("1", "medium", "onion, diced", false),
      item("1", "medium", "carrot, diced", false),
      item("1", "stalk", "celery, diced", false),
      item("2", "cloves", "garlic, minced", false),
      item("1", "piece", "bay leaf", false),
      item("1", "teaspoon", "dried oregano", false),
      item("1", "teaspoon", "dried basil", false),
      item("1", "cup", "dried lentils, rinsed", false),
      item("4", "cups", "water", false),
      item("1", "cup", "chopped tomato", false),
      item("2", "cups", "spinach", false),
      item("1", "tablespoon", "red wine vinegar", false)],
     ["Heat the olive oil in a pot and cook the onion, carrot, and celery until softened.",
      "Add the garlic, bay leaf, oregano, basil, lentils, and water.",
      "Simmer until the lentils are tender, then stir in the tomato.",
      "Add the spinach and vinegar and cook until the spinach wilts."]).

% Check that every required ingredient is available.

has_all_ingredients([], _).

has_all_ingredients([Ingredient|Rest], Available) :-
    memberchk(Ingredient, Available),
    has_all_ingredients(Rest, Available).

% 'any' means the user accepts any category.

category_matches(any, _).

category_matches(Category, Category) :-
    Category \= any.

% Recommend a dish only if the category matches
% and all required ingredients are present.

recommend(Dish, Category, Available) :-
    food(Dish, FoodCategory, Required),
    category_matches(Category, FoodCategory),
    has_all_ingredients(Required, Available).

recommendation_match(Dish, Category, Available, Score, Missing) :-
    food(Dish, FoodCategory, Required),
    category_matches(Category, FoodCategory),
    score_ingredients(Required, Available, Score, Missing, MatchedCount, _),
    MatchedCount > 0.

score_ingredients(Required, Available, Score, Missing, MatchedCount, Total) :-
    length(Required, Total),
    findall(Ingredient,
            (member(Ingredient, Required), memberchk(Ingredient, Available)),
            Matched),
    length(Matched, MatchedCount),
    Score is round(MatchedCount * 100 / Total),
    findall(Ingredient,
            (member(Ingredient, Required), \+ memberchk(Ingredient, Available)),
            Missing).

ranked_recommendations(Category, Available, Results) :-
    findall(candidate(Dish, FoodCategory, Required, Score, Missing,
                      MatchedCount, Total),
            (food(Dish, FoodCategory, Required),
             category_matches(Category, FoodCategory),
             score_ingredients(Required, Available, Score, Missing,
                               MatchedCount, Total),
             MatchedCount > 0),
            Candidates),
    predsort(compare_candidates, Candidates, Ranked),
    maplist(candidate_result, Ranked, Results).

compare_candidates(Order,
                   candidate(DishA, _, _, ScoreA, _, _, _),
                   candidate(DishB, _, _, ScoreB, _, _, _)) :-
    (   ScoreA > ScoreB
    ->  Order = (<)
    ;   ScoreA < ScoreB
    ->  Order = (>)
    ;   compare(Order, DishA, DishB)
    ).

candidate_result(candidate(Dish, Category, Ingredients, Score, Missing,
                           MatchedCount, Total),
                 _{name: Dish, category: Category, ingredients: Ingredients,
                   score: Score, missing: Missing,
                   matched_count: MatchedCount, total_count: Total}).
