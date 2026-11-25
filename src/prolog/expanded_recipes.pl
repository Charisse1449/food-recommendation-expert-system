% Additional Filipino dishes. Ingredient lists supply matching requirements;
% measured recipe details are supplied for selected dishes below.
:- multifile recipe_details/4.
:- discontiguous expanded_recipe/3.
expanded_recipe(pancit_bihon, dinner,
     [rice_noodles, pork, chicken, snow_peas, carrot, cabbage, celery,
      onion, garlic, chicken_powder, soy_sauce, water, oil]).
expanded_recipe(pancit_canton, dinner,
     [egg_noodles, pork, chinese_sausage, shrimp, snap_peas, carrot, cabbage,
      parsley, onion, garlic, soy_sauce, chicken_broth, water, oil, salt,
      black_pepper]).
expanded_recipe(pancit_palabok, dinner,
     [palabok_noodles, pork_shoulder, shrimp_cube, tinapa_flakes, annatto_water,
      flour, water, fish_sauce, black_pepper, oil, shrimp, napa_cabbage, egg,
      chicharon, scallions]).
expanded_recipe(pancit_lomi, soup,
     [miki_noodles, pork, garlic, onion, kikiam, meatballs, cassava_flour,
      ham, liver, fish_sauce, soy_sauce, black_pepper, broth, chicharon, egg,
      oil]).

recipe_details(pancit_bihon, 8,
     [item("1", "pound", "rice noodles", false),
      item("1/2", "pound", "pork, thinly sliced", false),
      item("1/2", "pound", "cooked chicken, sliced", false),
      item("1/8", "pound", "snow peas", false),
      item("1", "cup", "carrot strips", false),
      item("1/2", "small", "cabbage, chopped", false),
      item("1", "cup", "celery leaves, chopped", false),
      item("1", "piece", "onion, chopped", false),
      item("1/2", "tablespoon", "garlic, minced", false),
      item("2", "teaspoons", "chicken powder", false),
      item("5", "tablespoons", "soy sauce", false),
      item("3-4", "cups", "water", false),
      item("3", "tablespoons", "cooking oil", false)],
     ["Soak the rice noodles for 10 minutes, drain, and set aside.",
      "Heat oil in a wok. Saute garlic and onion until softened, then brown the pork.",
      "Add cooked chicken, chicken powder, and water. Simmer for 15 minutes.",
      "Add carrots, snow peas, cabbage, and celery. Cook until tender-crisp, then lift out the meat and vegetables.",
      "Stir soy sauce into the remaining broth. Add noodles and toss gently until tender and the liquid is absorbed.",
      "Return the meat and vegetables, toss for 1 to 2 minutes, and serve hot."]).

recipe_details(pancit_canton, 6,
     [item("250", "grams", "flour stick noodles", false),
      item("4", "ounces", "pork, thinly sliced", false),
      item("1", "piece", "Chinese sausage, sliced", false),
      item("8", "pieces", "shrimp, peeled", false),
      item("10", "pieces", "snap peas", false),
      item("3/4", "cup", "carrot, julienned", false),
      item("1", "small", "cabbage, chopped", false),
      item("1/2", "cup", "flat-leaf parsley, chopped", false),
      item("1", "piece", "onion, sliced", false),
      item("1", "teaspoon", "garlic, minced", false),
      item("3", "tablespoons", "soy sauce", false),
      item("1", "tablespoon", "oyster sauce", true),
      item("1 1/2", "cups", "chicken broth", false),
      item("3/4", "cup", "water", false),
      item("3", "tablespoons", "cooking oil", false),
      item("to taste", "", "salt", false),
      item("to taste", "", "black pepper", false)],
     ["Blanch snap peas, carrot, and cabbage briefly, then cool in ice water and drain.",
      "Heat oil in a wok. Saute onion and garlic, then add pork and Chinese sausage.",
      "Stir in soy sauce and optional oyster sauce. Add broth, water, salt, and pepper; bring to a boil.",
      "Add shrimp and parsley and cook for 3 minutes. Toss in the noodles until they absorb the liquid.",
      "Return the blanched vegetables, toss for 1 to 2 minutes, and serve."]).

recipe_details(pancit_palabok, 6,
     [item("12", "ounces", "palabok noodles", false),
      item("2", "quarts", "water for soaking and cooking", false),
      item("8", "ounces", "pork shoulder, sliced", false),
      item("1", "piece", "shrimp bouillon cube", false),
      item("1/2", "cup", "tinapa flakes", false),
      item("6", "tablespoons", "all-purpose flour", false),
      item("1/2", "cup", "water for flour slurry", false),
      item("1/2", "cup", "annatto water", false),
      item("3 1/2", "cups", "water", false),
      item("3 1/2", "tablespoons", "fish sauce", false),
      item("1/4", "teaspoon", "ground black pepper", false),
      item("3", "tablespoons", "cooking oil", false),
      item("12", "pieces", "shrimp, peeled and deveined", false),
      item("1", "cup", "Napa cabbage", false),
      item("3", "pieces", "hard-boiled eggs", false),
      item("1/2", "cup", "crushed chicharon", false),
      item("1/2", "cup", "chopped scallions", false),
      item("to serve", "", "calamansi or lime", true)],
     ["Soak the noodles for 30 minutes, drain, then cook in boiling water until tender. Set aside.",
      "Heat oil in a pot and brown the pork. Stir in fish sauce and annatto water, add water, and simmer 15 to 18 minutes until tender.",
      "Add the shrimp cube and tinapa flakes; cook for 5 minutes.",
      "Mix flour with its measured water until smooth. Stir the slurry into the sauce gradually until thickened, then season with black pepper.",
      "Boil shrimp until pink and blanch the cabbage for 1 minute.",
      "Plate noodles with sauce, then top with shrimp, cabbage, eggs, chicharon, and scallions. Serve with calamansi or lime."]).

recipe_details(pancit_lomi, 4,
     [item("1", "pound", "miki noodles", false),
      item("3", "cloves", "garlic, minced", false),
      item("1", "medium", "onion, minced", false),
      item("1/4", "pound", "cooked kikiam, sliced", false),
      item("1/4", "pound", "pork, thinly sliced", false),
      item("6-8", "pieces", "cooked meatballs", false),
      item("3", "tablespoons", "cassava flour", false),
      item("1/4", "pound", "ham, chopped", false),
      item("1/4", "pound", "pork liver, sliced", false),
      item("1 1/2", "tablespoons", "fish sauce", false),
      item("1", "tablespoon", "soy sauce", false),
      item("1", "teaspoon", "ground black pepper", false),
      item("6", "cups", "pork or beef broth", false),
      item("1", "cup", "chicharon, pounded", false),
      item("1", "large", "egg, beaten", false),
      item("2", "tablespoons", "scallions, chopped", true),
      item("2", "tablespoons", "cooking oil", false)],
     ["Heat oil. Saute garlic and onion, brown pork, and cook with ham for 2 minutes.",
      "Stir in fish sauce and soy sauce. Add broth and simmer 20 to 30 minutes until pork is tender.",
      "Add meatballs and kikiam; simmer 3 minutes. Add pepper and miki noodles; cook 5 to 6 minutes.",
      "Mix cassava flour with an equal amount of water, then slowly stir the slurry into the soup until thickened.",
      "Add liver and simmer 3 to 5 minutes until fully cooked. Lower heat and stir in beaten egg for 1 minute.",
      "Serve hot topped with chicharon and optional scallions."]).

recipe_details(pancit_malabon, 6,
     [item("1", "pound", "thick rice noodles", false),
      item("2", "tablespoons", "cooking oil", false),
      item("1", "tablespoon", "garlic, minced", false),
      item("1", "medium", "onion, minced", false),
      item("1/2", "pound", "boiled pork belly, sliced", false),
      item("3", "tablespoons", "fish sauce", false),
      item("1/2", "teaspoon", "ground black pepper", false),
      item("3/4", "cup", "shrimp juice", false),
      item("1/2", "cup", "annatto water", false),
      item("1/4", "cup", "pounded chicharon for sauce", false),
      item("1/2", "pound", "shrimp, cooked and shelled", false),
      item("1/4", "pound", "adobong pusit, sliced", false),
      item("3/4", "cup", "tinapa flakes", false),
      item("1", "cup", "Napa cabbage, blanched", false),
      item("3", "pieces", "hard-boiled eggs, sliced", false),
      item("1/2", "cup", "pounded chicharon for topping", false),
      item("2", "tablespoons", "toasted garlic", false),
      item("1", "tablespoon", "parsley, chopped", false),
      item("1", "piece", "lemon or calamansi", true)],
     ["Cook the thick rice noodles according to the package directions; soak overnight first if the package requires it. Drain.",
      "Heat oil in a wide pan. Saute garlic and onion until soft, then add boiled pork and cook for 3 minutes.",
      "Stir in fish sauce and black pepper. Add shrimp juice and annatto water; bring to a boil.",
      "Add half the pounded chicharon and simmer for 2 to 3 minutes. Toss the sauce with the noodles.",
      "Arrange shrimp, squid, tinapa, cabbage, sliced eggs, remaining chicharon, toasted garlic, and parsley on top.",
      "Serve with lemon or calamansi."]).

recipe_details(pancit_sotanghon, 5,
     [item("3/4", "pound", "sotanghon noodles", false),
      item("1/2", "piece", "baked chicken, shredded", false),
      item("3", "pieces", "Chinese sausage, chopped", false),
      item("4", "ounces", "pork, thinly sliced", false),
      item("1/4", "cup", "flat-leaf parsley, chopped", false),
      item("3", "tablespoons", "soy sauce", false),
      item("1", "tablespoon", "oyster sauce", false),
      item("1", "small", "carrot, julienned", false),
      item("15-18", "pieces", "snap peas", false),
      item("1/2", "medium", "cabbage, chopped", false),
      item("1", "small", "yellow onion, sliced", false),
      item("2", "cloves", "garlic, crushed", false),
      item("3", "tablespoons", "cooking oil", false),
      item("1 1/4", "cups", "unsalted chicken broth", false),
      item("to taste", "", "salt and ground black pepper", false)],
     ["Soak the noodles in room-temperature water for about 10 minutes, until pliable; drain.",
      "Blanch carrot for 1 minute, then snap peas and cabbage for another minute. Cool in ice water and drain.",
      "Heat oil in a wok. Saute garlic and onion, then stir-fry sausage, pork, and chicken for 5 minutes until pork is cooked.",
      "Add parsley, soy sauce, oyster sauce, and 3/4 cup broth. Bring to a boil.",
      "Add noodles and toss. Gradually add the remaining broth until noodles are tender and have absorbed the liquid; season with salt and pepper.",
      "Fold in the blanched vegetables, cook for 3 minutes, and serve hot."]).

recipe_details(pancit_miki, 4,
     [item("1", "pound", "miki noodles", false),
      item("1/4", "pound", "grilled pork belly, sliced", false),
      item("2", "pieces", "boneless chicken breasts, sliced", false),
      item("2", "cups", "cabbage, chopped", false),
      item("1", "cup", "carrot, shredded", false),
      item("1", "medium", "onion, sliced", false),
      item("5", "tablespoons", "soy sauce", false),
      item("1", "tablespoon", "oyster sauce", false),
      item("1", "tablespoon", "sherry", false),
      item("1/2", "teaspoon", "salt", false),
      item("1/2", "teaspoon", "ground black pepper", false),
      item("2", "tablespoons", "cooking oil", false)],
     ["Heat oil in a wok. Cook chicken for 3 minutes, then add pork belly and cook for 2 minutes.",
      "Add sherry and onion; cook until the onion softens.",
      "Stir in salt, pepper, soy sauce, and oyster sauce. Cook 6 to 8 minutes, adding a little water if needed.",
      "Add cabbage and carrot and cook until tender.",
      "Add miki noodles, stir-fry for 3 minutes, and serve."]).

recipe_details(pancit_miswa, 3,
     [item("1", "medium", "patola (sponge gourd), peeled and sliced", false),
      item("1/2", "pound", "shrimp, cleaned and peeled", false),
      item("2", "ounces", "misua noodles", false),
      item("1/2", "cup", "tomato sauce", false),
      item("1", "small", "onion, minced", false),
      item("2", "teaspoons", "garlic, minced", false),
      item("1", "teaspoon", "shrimp bouillon", false),
      item("2", "tablespoons", "fish sauce", false),
      item("4-5", "cups", "water", false),
      item("3", "tablespoons", "toasted garlic", false),
      item("3", "tablespoons", "cooking oil", false),
      item("to taste", "", "salt and black pepper", false)],
     ["Heat oil in a deep pot. Saute onion and garlic.",
      "Stir in fish sauce and tomato sauce, then add about 1/2 teaspoon black pepper.",
      "Add shrimp and cook for 1 minute. Pour in water and bring to a boil.",
      "Add misua, shrimp bouillon, and patola. Cook for 3 to 6 minutes.",
      "Adjust salt and pepper, ladle into bowls, and top with toasted garlic."]).

recipe_details(pancit_chami, 4,
     [item("1", "pound", "fresh noodles", false),
      item("4", "ounces", "pork, sliced", false),
      item("2", "ounces", "chicken, sliced", false),
      item("3", "ounces", "pork liver, sliced", false),
      item("2", "ounces", "pork fat", false),
      item("3", "tablespoons", "soy sauce", false),
      item("3", "tablespoons", "oyster sauce", false),
      item("2", "tablespoons", "brown sugar", false),
      item("1", "teaspoon", "crushed red pepper", false),
      item("1", "piece", "onion, chopped", false),
      item("4", "cloves", "garlic, chopped", false),
      item("1/2", "head", "cabbage, sliced", false),
      item("3/4", "cup", "carrot, julienned", false),
      item("to taste", "", "ground black pepper", false),
      item("2", "teaspoons", "cornstarch", false),
      item("8", "pieces", "boiled quail eggs", false),
      item("1", "cup", "water", false)],
     ["Sear pork fat in a wok until it releases oil. Saute onion and garlic until softened.",
      "Add pork, chicken, and liver; saute until lightly browned.",
      "Add soy sauce, oyster sauce, and water. Cover and bring to a boil; add red pepper and brown sugar and boil for 5 minutes.",
      "Toss in noodles, carrot, and cabbage. Cover and cook for 2 minutes.",
      "Mix cornstarch with 2 teaspoons soy sauce and 1/4 cup water. Stir the slurry and black pepper through the noodles, add quail eggs, and serve."]).

recipe_details(pancit_batil_patong, 4,
     [item("6", "ounces", "minced beef", false),
      item("12", "ounces", "fresh miki noodles", false),
      item("3-4", "ounces", "pork liver, sliced", false),
      item("1", "medium", "red onion, cubed", false),
      item("1 1/2", "cups", "mung bean sprouts", false),
      item("3/4", "cup", "green onions, chopped", false),
      item("1", "cup", "cabbage, shredded", false),
      item("1", "cup", "carrot, julienned", false),
      item("3", "tablespoons", "soy sauce", false),
      item("2", "pieces", "eggs", false),
      item("1/4", "teaspoon", "ground black pepper", false),
      item("6", "ounces", "lechon carajay, chopped", false),
      item("3", "tablespoons", "cooking oil", false),
      item("1", "pound", "beef bones with meat", false),
      item("1", "piece", "beef bouillon", false),
      item("6-8", "cups", "water", false),
      item("1", "stalk", "celery", false),
      item("1", "medium", "carrot for stock", false),
      item("1", "small", "onion for stock", false)],
     ["Bring water and beef bones to a boil for 5 minutes. Bundle celery, carrot, and onion in cheesecloth; add with bouillon and simmer 45 minutes until beef is tender.",
      "Heat oil in a wide pan. Soften red onion, then saute minced beef for 3 to 5 minutes and liver for 3 minutes.",
      "Add bean sprouts, green onions, cabbage, and carrot; saute for 2 to 3 minutes.",
      "Add 4 to 5 cups stock and bring to a boil. Cook miki noodles in the pan with soy sauce and pepper for 2 to 3 minutes.",
      "Poach one egg in the broth, plate the noodles and toppings, then stir the second egg into the remaining boiling stock to make the batil.",
      "Top noodles with poached egg and lechon carajay; serve with batil on the side."]).

recipe_details(arroz_caldo, 6,
     [item("2", "pounds", "chicken pieces", false),
      item("1 1/2", "cups", "uncooked rice", false),
      item("1", "piece", "chicken cube", false),
      item("34", "ounces", "water", false),
      item("8", "cloves", "garlic, chopped", false),
      item("3", "pieces", "onions, chopped", false),
      item("5", "pieces", "hard-boiled eggs", false),
      item("1", "cup", "green onions, chopped", false),
      item("3", "thumbs", "ginger, julienned", false),
      item("1", "tablespoon", "safflower", false),
      item("to taste", "", "fish sauce and black pepper", false),
      item("3", "tablespoons", "cooking oil", false),
      item("1", "piece", "lemon or 4 calamansi", true)],
     ["Heat oil in a pot and saute garlic, onion, and ginger.",
      "Add chicken and saute until the outside turns golden. Stir in uncooked rice and cook for 1 minute.",
      "Pour in water and bring to a boil. Add chicken cube and simmer 30 to 40 minutes, stirring occasionally, until rice is fully cooked.",
      "Stir in safflower and season with fish sauce and black pepper. Add hard-boiled eggs.",
      "Serve in bowls topped with green onion and a squeeze of lemon or calamansi."]).

recipe_details(goto, 4,
     [item("1", "cup", "uncooked rice", false),
      item("1", "pound", "ox tripe, cleaned", false),
      item("1", "pound", "pig intestine, cleaned", false),
      item("4", "pieces", "boiled eggs", false),
      item("5", "cups", "water for cooking rice", false),
      item("6", "cups", "water for boiling innards", false),
      item("2", "teaspoons", "beef powder or 1 beef cube", false),
      item("1", "teaspoon", "turmeric powder", true),
      item("2", "tablespoons", "ginger, minced", false),
      item("1", "medium", "onion, minced", false),
      item("5", "cloves", "garlic, minced", false),
      item("2", "teaspoons", "garlic powder", false),
      item("3", "tablespoons", "cooking oil", false),
      item("1", "head", "toasted garlic", false),
      item("1/4", "cup", "green onion, chopped", false),
      item("1/2", "cup", "chicharon, crushed", false),
      item("to taste", "", "salt and black pepper", false)],
     ["Boil the tripe and intestine in water for 2 to 3 hours until tender. Cool, slice into bite-sized pieces, and set aside.",
      "Heat oil in a pot and saute onion, ginger, and garlic. Add the cooked innards and cook for 2 to 3 minutes.",
      "Stir in beef powder, optional turmeric, and garlic powder. Add cooking water and bring to a boil.",
      "Add rice and cook over low to medium heat for 30 to 45 minutes, stirring every few minutes until porridge thickens.",
      "Season with salt and pepper. Serve with boiled egg, green onion, toasted garlic, and crushed chicharon."]).

recipe_details(lugaw, 4,
     [item("1", "cup", "long-grain white rice", false),
      item("4-5", "cups", "water", false),
      item("2", "teaspoons", "salt", false),
      item("1/4", "cup", "pork floss", false)],
     ["Bring water to a boil in a pot.",
      "Add rice and cook for about 30 minutes, stirring occasionally, until thick and porridge-like.",
      "Stir in salt and cook for 2 more minutes.",
      "Serve hot topped with pork floss."]).

recipe_details(champorado, 3,
     [item("8", "tablespoons", "cocoa powder", false),
      item("1", "cup", "glutinous rice", false),
      item("1/2", "cup", "sugar", false),
      item("3 1/2", "cups", "water", false),
      item("to taste", "", "condensed milk", true)],
     ["Bring 2 1/2 cups of water to a boil in a pot.",
      "Add glutinous rice and let the water return to a boil.",
      "Mix cocoa powder with 1 cup warm water, pour it into the pot, and stir continuously.",
      "Cook and stir until rice is tender, about 12 to 18 minutes. Add sugar and cook 5 more minutes until thick.",
      "Serve warm with optional condensed milk."]).
expanded_recipe(pancit_malabon, dinner,
     [thick_rice_noodles, oil, garlic, onion, pork_belly, fish_sauce,
      black_pepper, shrimp_juice, annatto_water, chicharon, shrimp,
      adobong_pusit, tinapa_flakes, napa_cabbage, egg, toasted_garlic,
      parsley]).
expanded_recipe(pancit_sotanghon, dinner,
     [glass_noodles, chicken, chinese_sausage, pork, parsley, soy_sauce,
      oyster_sauce, carrot, snap_peas, cabbage, onion, garlic, oil,
      chicken_broth, salt, black_pepper]).
expanded_recipe(pancit_miki, dinner,
     [miki_noodles, pork_belly, chicken, cabbage, carrot, onion, soy_sauce,
      oyster_sauce, sherry, salt, black_pepper, oil]).
expanded_recipe(pancit_miswa, soup,
     [misua, patola, shrimp, tomato_sauce, onion, garlic, shrimp_bouillon,
      fish_sauce, water, toasted_garlic, oil, salt, black_pepper]).
expanded_recipe(pancit_chami, dinner,
     [fresh_noodles, pork, chicken, pork_liver, pork_fat, soy_sauce,
      oyster_sauce, brown_sugar, red_pepper, onion, garlic, cabbage, carrot,
      cornstarch, quail_egg, water, black_pepper]).
expanded_recipe(pancit_batil_patong, dinner,
     [beef, miki_noodles, pork_liver, red_onion, mung_bean_sprouts,
      green_onion, cabbage, carrot, soy_sauce, egg, black_pepper,
      lechon_carajay, oil, beef_bones, beef_bouillon, water, celery, onion]).
expanded_recipe(arroz_caldo, breakfast,
     [chicken, rice, chicken_cube, water, garlic, onion, ginger, safflower,
      fish_sauce, black_pepper, egg, green_onion, oil]).
expanded_recipe(goto, breakfast,
     [rice, beef_tripe, pork_intestine, egg, water, beef_cube, ginger, onion,
      garlic, garlic_powder, green_onion, toasted_garlic, chicharon, oil,
      salt, black_pepper]).
expanded_recipe(lugaw, breakfast, [rice, water, salt, pork_floss]).
expanded_recipe(champorado, breakfast,
     [glutinous_rice, cocoa_powder, sugar, water]).
recipe_details(kare_kare, 6,
     [item("3", "pounds", "oxtail", false),
      item("1", "small", "banana flower bud, sliced", false),
      item("1", "bundle", "pechay", false),
      item("1", "bundle", "string beans, cut", false),
      item("4", "pieces", "Chinese eggplant, sliced", false),
      item("1", "cup", "ground peanuts", false),
      item("1/2", "cup", "peanut butter", false),
      item("1/2", "cup", "shrimp paste, for serving", true),
      item("34", "ounces", "water", false),
      item("1/2", "cup", "annatto seeds soaked in water", false),
      item("1/2", "cup", "toasted ground rice", false),
      item("1", "tablespoon", "garlic, minced", false),
      item("1", "piece", "onion, chopped", false),
      item("to taste", "", "salt and pepper", false)],
     ["Bring water to a boil, add oxtail and onion, then simmer until tender, about 2 1/2 to 3 hours (or pressure-cook about 35 minutes).",
      "Stir in ground peanuts, peanut butter, and strained annatto water; simmer 5 to 7 minutes.",
      "Add toasted ground rice and simmer about 5 minutes to thicken the sauce.",
      "Saute garlic, banana flower, eggplant, and string beans separately for about 5 minutes. Add to the pot with pechay and cook until just tender.",
      "Season with salt and pepper. Serve hot with shrimp paste on the side."]).
recipe_details(beef_caldereta, 6,
     [item("2", "pounds", "beef chuck, cubed", false),
      item("2", "medium", "carrots, sliced", false),
      item("1", "large", "potato, cubed", false),
      item("1", "small", "green bell pepper, sliced", false),
      item("1", "small", "red bell pepper, sliced", false),
      item("1", "cube", "beef bouillon", false),
      item("1", "can (8 ounces)", "tomato sauce", false),
      item("5", "tablespoons", "liver spread", false),
      item("3", "cloves", "garlic, crushed", false),
      item("1", "medium", "yellow onion, chopped", false),
      item("1/4", "teaspoon", "red pepper flakes", false),
      item("1 1/2", "cups", "water", false),
      item("6", "tablespoons", "cooking oil", false),
      item("to taste", "", "salt and ground black pepper", false)],
     ["Pan-fry bell peppers for about 3 minutes and set aside. Fry potato and carrots for 3 to 5 minutes and set aside.",
      "Heat oil in a pot. Saute garlic and onion, then add beef and brown lightly.",
      "Add tomato sauce, water, and beef cube. Cover and simmer on low for about 60 minutes, until the beef is tender; add water if needed.",
      "Stir in liver spread, salt, and pepper. Add potato, carrots, and bell peppers; cover and cook 5 minutes.",
      "Add red pepper flakes and cook 3 minutes more. Serve hot."]).
recipe_details(beef_mechado, 6,
     [item("2", "pounds", "beef chuck, cubed", false),
      item("3", "cloves", "garlic, crushed", false),
      item("1", "large", "onion, sliced", false),
      item("8", "ounces", "tomato sauce", false),
      item("1", "cup", "water", false),
      item("3", "tablespoons", "cooking oil", false),
      item("1", "slice", "lemon with rind", false),
      item("1", "large", "potato, sliced", false),
      item("1/4", "cup", "soy sauce", false),
      item("1/2", "teaspoon", "ground black pepper", false),
      item("2", "pieces", "bay leaves", false),
      item("to taste", "", "salt", false)],
     ["Heat oil and saute garlic and onion. Add beef and saute until lightly browned.",
      "Add tomato sauce and water. Cover and simmer until the beef is tender, 60 to 120 minutes, adding water as needed.",
      "Add soy sauce, pepper, lemon slice, bay leaves, and salt. Simmer until the sauce reduces.",
      "Add potato and cook until soft. Serve hot with rice."]).
recipe_details(chicken_afritada, 4,
     [item("1 1/2", "pounds", "chicken, cut into serving pieces", false),
      item("2", "pieces", "potatoes, cubed", false),
      item("1", "piece", "carrot, sliced", false),
      item("8", "ounces", "tomato sauce", false),
      item("3", "pieces", "hotdogs, sliced", true),
      item("1/2", "cup", "green peas", false),
      item("3", "pieces", "bay leaves", false),
      item("1", "piece", "red onion, chopped", false),
      item("2", "teaspoons", "garlic, minced", false),
      item("3", "cups", "chicken broth", false),
      item("1/2", "teaspoon", "sugar", false),
      item("3", "tablespoons", "cooking oil", false),
      item("to taste", "", "salt and ground black pepper", false)],
     ["Heat oil in a pot and saute onion and garlic until softened.",
      "Add chicken and brown briefly on both sides. Add tomato sauce and broth; bring to a boil.",
      "Add bay leaves, cover, and simmer over medium heat for 30 minutes.",
      "Add hotdogs and carrot; cook 3 minutes. Add potato and cook covered for 8 minutes.",
      "Stir in green peas and cook 2 minutes. Season with salt and pepper, then serve."]).
recipe_details(lumpiang_shanghai, 6,
     [item("2 1/2", "pounds", "ground pork", false),
      item("1", "piece", "pork bouillon cube", false),
      item("50", "pieces", "lumpia wrappers", false),
      item("3/4", "cup", "carrot, minced", false),
      item("2", "pieces", "onions, minced", false),
      item("2", "pieces", "eggs", false),
      item("1/4", "cup", "parsley, minced", false),
      item("1/2", "teaspoon", "ground black pepper", false),
      item("1", "teaspoon", "salt", false),
      item("1", "teaspoon", "sesame oil", false),
      item("1", "teaspoon", "garlic powder", false),
      item("2", "cups", "cooking oil", false)],
     ["Mix ground pork, carrot, onion, and parsley. Add eggs, pepper, salt, garlic powder, sesame oil, and crumbled pork cube; combine well.",
      "Place 1 to 1 1/2 tablespoons filling on each wrapper and roll closed.",
      "Deep-fry over low to medium heat until golden brown and cooked through. Drain on paper towels and serve."]).
recipe_details(kwek_kwek, 4,
     [item("12 to 18", "pieces", "boiled quail eggs", false),
      item("1", "cup", "flour", false),
      item("3", "tablespoons", "cornstarch", false),
      item("3/4 to 1", "cup", "water", false),
      item("1", "tablespoon", "annatto powder", false),
      item("1/2", "teaspoon", "salt", false),
      item("1/2", "teaspoon", "ground black pepper", false),
      item("2", "cups", "cooking oil", false)],
     ["Dredge boiled quail eggs in cornstarch.",
      "Mix flour, salt, and pepper. Dissolve annatto powder in warm water and stir into the flour to make a smooth batter.",
      "Coat the eggs in batter and deep-fry in hot oil until crisp. Drain and serve while hot."]).
recipe_details(turon, 6,
     [item("6", "pieces", "saba bananas, halved lengthwise", false),
      item("1", "cup", "ripe jackfruit, sliced", false),
      item("1 1/2", "cups", "sugar", false),
      item("12", "pieces", "lumpia wrappers", false),
      item("2", "cups", "cooking oil", false)],
     ["Coat banana pieces in sugar. Place each on a wrapper with a piece of jackfruit.",
      "Fold and seal the wrappers with a little water.",
      "Heat oil in a pan and add some sugar. When the sugar browns and floats, fry the wrapped bananas until golden and caramel-coated.",
      "Serve hot."]).
recipe_details(tapsilog, 3,
     [item("1", "pound", "beef sirloin, thinly sliced", false),
      item("3", "pieces", "eggs", false),
      item("6", "tablespoons", "cooking oil", false),
      item("3", "tablespoons", "liquid seasoning", false),
      item("6", "cloves", "garlic, crushed", false),
      item("3/4", "cup", "pineapple juice", false),
      item("2", "tablespoons", "brown sugar", false),
      item("1/4", "teaspoon", "white pepper", false),
      item("5", "cups", "leftover rice", false),
      item("1", "teaspoon", "salt", false),
      item("3/4", "cup", "water", false)],
     ["Marinate the beef overnight with liquid seasoning, crushed garlic, pineapple juice, brown sugar, and white pepper.",
      "Fry garlic in 3 tablespoons oil until light golden. Add rice, stir-fry, season with salt, and set aside.",
      "Simmer beef with its marinade and water until reduced. Add remaining oil and fry until browned and cooked through.",
      "Fry the eggs and serve with the beef tapa and garlic rice."]).
recipe_details(tocilog, 3,
     [item("1", "pound", "uncooked pork tocino", false),
      item("3", "cups", "garlic fried rice", false),
      item("3", "pieces", "eggs", false),
      item("2", "cups", "water", false),
      item("1/4", "cup", "cooking oil", false)],
     ["Bring water to a boil. Add oil and tocino; simmer over medium heat until the water evaporates.",
      "Fry the tocino in the remaining oil for about 3 minutes per side, until cooked through.",
      "Fry the eggs. Briefly toss the garlic rice in the pan with a little tocino cooking residue.",
      "Plate the tocino, eggs, and garlic rice; serve with spiced vinegar."]).
recipe_details(longsilog, 4,
     [item("1/2", "pound", "skinless longanisa", false),
      item("2", "pieces", "eggs", false),
      item("4", "cups", "leftover rice", false),
      item("5", "cloves", "garlic, crushed", false),
      item("1/2", "cup", "water", false),
      item("4", "tablespoons", "cooking oil", false),
      item("to taste", "", "salt and ground black pepper", false)],
     ["Heat 2 tablespoons oil and fry the eggs; set aside.",
      "Add the remaining oil and brown the longanisa. Add water and simmer until it evaporates, then cook the sausage through in the remaining oil.",
      "Cook the garlic in the pan until lightly browned. Add rice and stir-fry for 3 minutes; season with salt and pepper.",
      "Serve the longanisa with garlic rice and fried eggs."]).
recipe_details(hotsilog, 1,
     [item("3", "pieces", "red hotdogs", false),
      item("2", "pieces", "eggs", false),
      item("1", "cup", "garlic fried rice", false),
      item("1", "medium", "tomato, sliced", false),
      item("3/4", "cup", "water", false),
      item("6", "tablespoons", "cooking oil", false)],
     ["Boil water in a small pot. Add hotdogs and 2 tablespoons oil; cook until the water evaporates.",
      "Roll and fry the hotdogs in the remaining oil for 1 to 2 minutes, until heated and browned.",
      "Fry the eggs in the remaining oil.",
      "Serve the hotdogs and eggs with garlic rice and sliced tomato."]).
expanded_recipe(tapsilog, breakfast,
     [beef, liquid_seasoning, garlic, pineapple_juice, brown_sugar,
      white_pepper, rice, salt, egg, oil, water]).
expanded_recipe(tocilog, breakfast, [tocino, rice, egg, oil, water]).
expanded_recipe(longsilog, breakfast,
     [longanisa, rice, garlic, egg, oil, water, salt, black_pepper]).
expanded_recipe(hotsilog, breakfast,
     [hotdog, rice, egg, tomato, oil, water]).
expanded_recipe(hotsilog_cheese, breakfast, [hotdog, cheese, rice, egg, garlic, oil]).
expanded_recipe(kare_kare, dinner,
     [oxtail, ground_peanuts, peanut_butter, ground_rice, annatto, eggplant,
      sitaw, bok_choy, banana_blossom, shrimp_paste, garlic, onion, water,
      salt, black_pepper]).
expanded_recipe(beef_caldereta, dinner,
     [beef, beef_cube, tomato_sauce, potato, carrot, bell_pepper,
      liver_spread, garlic, onion, red_pepper, water, oil, salt, black_pepper]).
expanded_recipe(beef_mechado, dinner,
     [beef, tomato_sauce, potato, soy_sauce, lemon, bay_leaf, garlic, onion,
      water, oil, salt, black_pepper]).
expanded_recipe(chicken_afritada, dinner,
     [chicken, tomato_sauce, potato, carrot, hotdog, peas, bay_leaf,
      red_onion, garlic, chicken_broth, sugar, oil, salt, black_pepper]).
expanded_recipe(pork_menudo, dinner, [pork, pork_liver, tomato_sauce, potato, carrot, bell_pepper, raisins, garlic]).
expanded_recipe(chicken_menudo, dinner, [chicken, chicken_liver, tomato_sauce, potato, carrot, bell_pepper, raisins, garlic]).
expanded_recipe(pork_sisig, dinner, [pork, pork_liver, onion, calamansi, chili, mayonnaise, soy_sauce]).
expanded_recipe(chicken_sisig, dinner, [chicken, chicken_liver, onion, calamansi, chili, mayonnaise, soy_sauce]).
expanded_recipe(lechon_kawali, dinner, [pork_belly, salt, bay_leaf, garlic, black_pepper, oil]).
expanded_recipe(crispy_pata, dinner, [pork_hock, garlic, bay_leaf, black_pepper, salt, oil]).
expanded_recipe(bulalo, soup, [beef_shank, corn, cabbage, pechay, onion, black_pepper, fish_sauce, water]).
expanded_recipe(nilagang_baka, soup, [beef, potato, cabbage, pechay, corn, onion, black_pepper, fish_sauce]).
expanded_recipe(pochero, soup, [beef, chorizo, saba_banana, potato, cabbage, tomato_sauce, chickpeas, onion]).
expanded_recipe(pork_pochero, dinner, [pork, chorizo, saba_banana, potato, cabbage, tomato_sauce, chickpeas, onion]).
expanded_recipe(pinakbet, dinner, [pork, shrimp_paste, squash, eggplant, ampalaya, sitaw, tomato, onion]).
expanded_recipe(pinakbet_tagalog, dinner, [pork, shrimp_paste, squash, eggplant, ampalaya, sitaw, okra, tomato]).
expanded_recipe(laing, dinner, [dried_taro_leaves, coconut_milk, pork, shrimp_paste, ginger, garlic, chili]).
expanded_recipe(ginataang_langka, dinner, [young_jackfruit, coconut_milk, pork, shrimp_paste, garlic, onion, chili]).
expanded_recipe(ginataang_talong, dinner, [eggplant, coconut_milk, shrimp_paste, garlic, onion, chili]).
expanded_recipe(adobong_kangkong, dinner, [kangkong, soy_sauce, vinegar, garlic, black_pepper, oil]).
expanded_recipe(chopsuey, dinner, [chicken, shrimp, cabbage, carrot, cauliflower, bell_pepper, soy_sauce, cornstarch]).
expanded_recipe(lumpiang_shanghai, snack,
     [ground_pork, pork_cube, wrapper, carrot, onion, egg, parsley,
      black_pepper, salt, sesame_oil, garlic_powder, oil]).
expanded_recipe(lumpiang_sariwa, snack, [wrapper, heart_of_palm, carrot, cabbage, tofu, peanut_butter, garlic, egg]).
expanded_recipe(lumpiang_togue, snack, [wrapper, bean_sprouts, tofu, carrot, garlic, onion, soy_sauce, oil]).
expanded_recipe(tokwa_baboy, snack, [tofu, pork, vinegar, soy_sauce, onion, garlic, black_pepper, oil]).
expanded_recipe(kwek_kwek, snack,
     [quail_egg, flour, cornstarch, annatto, water, salt, black_pepper, oil]).
expanded_recipe(okoy, snack, [shrimp, squash, carrot, bean_sprouts, flour, egg, water, oil]).
expanded_recipe(turon, snack, [saba_banana, jackfruit, sugar, wrapper, oil]).
expanded_recipe(banana_cue, snack, [saba_banana, brown_sugar, oil]).
expanded_recipe(camote_cue, snack, [sweet_potato, brown_sugar, oil]).
expanded_recipe(ukoy, snack, [shrimp, bean_sprouts, squash, flour, egg, water, oil]).
expanded_recipe(ensaladang_talong, snack, [eggplant, tomato, onion, vinegar, salt, black_pepper]).
expanded_recipe(ensaladang_pako, snack, [fiddlehead_fern, tomato, salted_egg, onion, vinegar]).
expanded_recipe(atchara, snack, [green_papaya, carrot, bell_pepper, vinegar, sugar, ginger, garlic]).
expanded_recipe(bistek_tagalog, dinner, [beef, soy_sauce, calamansi, onion, garlic, black_pepper, oil]).
expanded_recipe(beef_salpicao, dinner, [beef, garlic, soy_sauce, oyster_sauce, black_pepper, butter]).
expanded_recipe(beef_morcon, dinner, [beef_flank, hotdog, egg, carrot, pickle, cheese, tomato_sauce]).
expanded_recipe(beef_pares, dinner, [beef, soy_sauce, star_anise, brown_sugar, garlic, ginger, rice, beef_broth]).
expanded_recipe(dinuguan, dinner, [pork, pork_blood, vinegar, garlic, onion, chili, black_pepper]).
expanded_recipe(dinakdakan, dinner, [pork, pork_liver, onion, ginger, chili, vinegar, mayonnaise]).
expanded_recipe(bopis, dinner, [pork_lung, pork_heart, tomato, vinegar, garlic, onion, chili, bell_pepper]).
expanded_recipe(embutido, dinner, [ground_pork, egg, raisins, pickle, carrot, cheese, bread_crumbs]).
expanded_recipe(humba, dinner, [pork_belly, soy_sauce, vinegar, brown_sugar, black_beans, banana_blossom, garlic]).
expanded_recipe(paksiw_na_lechon, dinner, [lechon, vinegar, lechon_sauce, brown_sugar, garlic, bay_leaf, black_pepper]).
expanded_recipe(pork_chicharon, snack, [pork_rind, salt, water, oil]).
expanded_recipe(chicken_inasal, dinner, [chicken, calamansi, vinegar, lemongrass, garlic, ginger, annatto, oil]).
expanded_recipe(chicken_galantina, dinner, [chicken, ground_pork, egg, raisins, carrot, pickle, bread_crumbs]).
expanded_recipe(chicken_binakol, soup, [chicken, coconut_water, young_coconut, ginger, lemongrass, papaya, onion]).
expanded_recipe(chicken_pastel, dinner, [chicken, sausage, mushroom, potato, carrot, milk, butter, pastry]).
expanded_recipe(chicken_curry_pinoy, dinner, [chicken, coconut_milk, potato, carrot, bell_pepper, curry_powder, garlic, onion]).
expanded_recipe(chicken_pochero, dinner, [chicken, chorizo, saba_banana, potato, cabbage, tomato_sauce, chickpeas]).
expanded_recipe(chicken_hamonado, dinner, [chicken, pineapple, soy_sauce, brown_sugar, garlic, onion]).
expanded_recipe(chicken_relleno, dinner, [chicken, ground_pork, egg, raisins, sausage, carrot, pickle]).
expanded_recipe(escabecheng_tilapia, dinner, [tilapia, vinegar, sugar, ginger, carrot, bell_pepper, onion, garlic, oil]).
expanded_recipe(tilapia_in_tomato, dinner, [tilapia, tomato, onion, garlic, ginger, fish_sauce, oil]).
expanded_recipe(paksiw_na_isda, dinner, [fish, vinegar, ginger, garlic, eggplant, ampalaya, chili, water]).
expanded_recipe(daing_na_bangus, fish, [bangus, vinegar, garlic, black_pepper, salt, oil]).
expanded_recipe(paksiw_na_bangus, fish, [bangus, vinegar, ginger, garlic, eggplant, ampalaya, chili, water]).
expanded_recipe(kinilaw_na_tuna, fish, [tuna, vinegar, calamansi, ginger, onion, chili, cucumber]).
expanded_recipe(inihaw_na_tilapia, fish, [tilapia, tomato, onion, ginger, salt, black_pepper, calamansi]).
expanded_recipe(halabos_na_hipon, fish, [shrimp, salt, lemon_soda, garlic, black_pepper]).
expanded_recipe(ginataang_tahong, fish, [mussels, coconut_milk, ginger, garlic, onion, chili]).
expanded_recipe(sizzling_pusit, fish, [squid, soy_sauce, calamansi, onion, tomato, garlic, butter]).
expanded_recipe(adobong_pusit, fish, [squid, vinegar, soy_sauce, garlic, onion, black_pepper, oil]).
expanded_recipe(sinigang_na_hipon, soup, [shrimp, sinigang_mix, kangkong, sitaw, okra, tomato, onion, water]).
expanded_recipe(sinigang_na_baboy_gabi, soup, [pork, sinigang_mix, gabi, kangkong, sitaw, okra, tomato, onion]).
expanded_recipe(sinigang_na_baka, soup, [beef, tamarind, radish, kangkong, sitaw, tomato, onion, water]).
expanded_recipe(kansi, soup, [beef_shank, jackfruit, lemongrass, batuan, ginger, onion, fish_sauce, water]).
expanded_recipe(batchoy, soup, [pork, pork_liver, egg_noodles, chicharon, garlic, onion, broth, egg]).
expanded_recipe(mami, soup, [egg_noodles, chicken, cabbage, carrot, garlic, onion, chicken_broth, soy_sauce]).
expanded_recipe(almondigas, soup, [ground_pork, misua, patola, garlic, onion, egg, chicken_broth]).
expanded_recipe(sopas, soup, [macaroni, chicken, cabbage, carrot, celery, milk, onion, chicken_broth]).
expanded_recipe(macaroni_soup, soup, [macaroni, chicken, hotdog, carrot, evaporated_milk, garlic, onion, broth]).
expanded_recipe(mais_con_yelo, dessert, [sweet_corn, shaved_ice, evaporated_milk, sugar, leche_flan]).
expanded_recipe(halo_halo, dessert, [shaved_ice, evaporated_milk, ube, leche_flan, sweet_beans, banana, jackfruit]).
expanded_recipe(buko_pandan, dessert, [young_coconut, pandan, gelatin, cream, condensed_milk, sago]).
expanded_recipe(mango_sago, dessert, [mango, sago, cream, condensed_milk, milk]).
expanded_recipe(leche_flan, dessert, [egg_yolk, condensed_milk, evaporated_milk, sugar, vanilla]).
expanded_recipe(ube_halaya, dessert, [ube, coconut_milk, condensed_milk, butter, sugar]).
expanded_recipe(maja_blanca, dessert, [cornstarch, coconut_milk, evaporated_milk, sweet_corn, sugar, cheese]).
expanded_recipe(bibingka, dessert, [rice_flour, coconut_milk, egg, sugar, butter, salted_egg, cheese]).
