% Additional Filipino dishes. Ingredient lists supply matching requirements;
% measured recipe details are supplied for selected dishes below.
:- multifile recipe_details/4.
:- discontiguous expanded_recipe/3.
expanded_recipe(pancit_bihon, dinner,
     [rice_noodles, pork, chicken, snow_peas, carrot, cabbage, celery,
      onion, garlic, chicken_powder, soy_sauce, water, oil]).
expanded_recipe(pancit_canton, dinner,
     [egg_noodles, pork, chinese_sausage, shrimp, snap_peas, carrot, cabbage,
      parsley, onion, garlic, soy_sauce, oyster_sauce, chicken_broth, water,
      oil, salt, black_pepper]).
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
expanded_recipe(pancit_malabon, dinner, [rice_noodles, shrimp, squid, smoked_fish, cabbage, egg, garlic, annatto]).
expanded_recipe(pancit_sotanghon, dinner, [glass_noodles, chicken, carrot, celery, onion, garlic, chicken_broth, fish_sauce]).
expanded_recipe(pancit_miki, dinner, [miki_noodles, pork, shrimp, cabbage, carrot, soy_sauce, garlic]).
expanded_recipe(pancit_miswa, soup, [misua, patola, shrimp, garlic, onion, chicken_broth, fish_sauce]).
expanded_recipe(pancit_chami, dinner, [miki_noodles, pork, chicken, cabbage, carrot, soy_sauce, garlic]).
expanded_recipe(pancit_batil_patong, dinner, [miki_noodles, beef, liver, cabbage, carrot, egg, soy_sauce]).
expanded_recipe(arroz_caldo, breakfast, [rice, chicken, ginger, garlic, onion, fish_sauce, chicken_broth, safflower]).
expanded_recipe(goto, breakfast, [rice, beef_tripe, ginger, garlic, onion, beef_broth, fish_sauce]).
expanded_recipe(lugaw, breakfast, [rice, ginger, garlic, chicken_broth, fish_sauce, onion]).
expanded_recipe(champorado, breakfast, [glutinous_rice, cocoa_powder, sugar, milk, water]).
expanded_recipe(tapsilog, breakfast, [beef, garlic, soy_sauce, vinegar, rice, egg, oil]).
expanded_recipe(tocilog, breakfast, [pork, brown_sugar, garlic, soy_sauce, vinegar, rice, egg, oil]).
expanded_recipe(longsilog, breakfast, [pork, garlic, vinegar, brown_sugar, rice, egg, oil]).
expanded_recipe(hotsilog, breakfast, [hotdog, rice, egg, garlic, oil]).
expanded_recipe(hotsilog_cheese, breakfast, [hotdog, cheese, rice, egg, garlic, oil]).
expanded_recipe(kare_kare, dinner, [oxtail, peanut_butter, ground_rice, eggplant, sitaw, bok_choy, banana_blossom, shrimp_paste]).
expanded_recipe(beef_caldereta, dinner, [beef, tomato_sauce, potato, carrot, bell_pepper, liver_spread, garlic, onion]).
expanded_recipe(beef_mechado, dinner, [beef, tomato_sauce, potato, carrot, soy_sauce, calamansi, garlic, onion]).
expanded_recipe(chicken_afritada, dinner, [chicken, tomato_sauce, potato, carrot, bell_pepper, peas, garlic, onion]).
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
expanded_recipe(lumpiang_shanghai, snack, [ground_pork, carrot, onion, garlic, egg, spring_onion, wrapper, oil]).
expanded_recipe(lumpiang_sariwa, snack, [wrapper, heart_of_palm, carrot, cabbage, tofu, peanut_butter, garlic, egg]).
expanded_recipe(lumpiang_togue, snack, [wrapper, bean_sprouts, tofu, carrot, garlic, onion, soy_sauce, oil]).
expanded_recipe(tokwa_baboy, snack, [tofu, pork, vinegar, soy_sauce, onion, garlic, black_pepper, oil]).
expanded_recipe(kwek_kwek, snack, [quail_egg, flour, cornstarch, annatto, water, oil]).
expanded_recipe(okoy, snack, [shrimp, squash, carrot, bean_sprouts, flour, egg, water, oil]).
expanded_recipe(turon, snack, [saba_banana, jackfruit, brown_sugar, wrapper, oil]).
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
