# Food Recommendation Expert System

## 1. Project overview

The Food Recommendation Expert System helps users find recipes that fit the ingredients they have. It is intended for people choosing a meal from a known recipe collection. SWI-Prolog makes the recommendation decisions; a local browser interface makes the system easier to use.

Objectives:

1. Represent recipes, categories, and required ingredients as Prolog knowledge.
2. Recommend exact and partial recipe matches, explaining missing ingredients.
3. Provide a usable web interface while keeping the reasoning available for direct Prolog queries.

The application includes searchable ingredient checkboxes in the recommendation form, category selection, ranked recommendations, in-app recipe details, favorites, and recommendation history. Clicking a recommended or saved recipe opens its details without leaving the app. The knowledge base contains 142 recipes and 235 distinct ingredients across eight categories. The original 42 recipes and all 100 expanded recipes have measured ingredient lists, servings, and cooking steps.

## 2. Implementation & Prolog logic

**Stack:** SWI-Prolog; SWI-Prolog HTTP/JSON libraries; HTML, CSS, and JavaScript.

**Flow:** The browser requests recipe options from the local Prolog HTTP server, submits a category and ingredients, and displays the ranked results returned by Prolog. Recipe facts and all matching and ranking decisions are in `src/prolog/knowledge_base.pl`; `src/prolog/web_server.pl` exposes them to the browser. The console entry point remains in `src/prolog/main.pl`, and the UI is in `frontend/index.html`.

Important predicates:

- `food/3` represents each recipe as a dish, category, and required-ingredient list.
- `has_all_ingredients/2` recursively checks a required-ingredient list.
- `recommend/3` applies category matching and strict ingredient matching.
- `recommendation_match/5` calculates a match percentage and the missing ingredients.
- `ranked_recommendations/3` builds candidate results and sorts them by score, then dish name.
- `recipe_details/4` stores measured ingredient lists, servings, and cooking steps for the original recipes and 100 source-based expanded dishes. Other expanded catalog entries supply ingredient requirements used for matching.

These predicates demonstrate knowledge representation, unification, backtracking over recipe facts, recursion, list processing, and negation.

Representative queries:

```prolog
?- recommend(egg_fried_rice, rice, [rice, egg, oil]).
true.

?- recommendation_match(egg_fried_rice, rice, [rice], Score, Missing).
Score = 33,
Missing = [egg, oil].
```

## 3. How to run & test results

Install SWI-Prolog, then run the web interface from the project directory:

```powershell
swipl -q -s src/prolog/web_server.pl -g "start_server"
```

Open <http://127.0.0.1:8000>. Stop the server with `Ctrl+C`. The console interface can be run with `swipl -q -s src/prolog/main.pl -g main -t halt`.

Run automated tests with:

```powershell
swipl -q -s tests/tests.pl -g run_tests -t halt
```

The 69-test PlUnit suite passed. Representative test results:

| Test | Input | Actual result |
|---|---|---|
| Complete match | `recommend(egg_fried_rice, rice, [rice, egg, oil])` | Succeeds. |
| Missing ingredient | `recommend(egg_fried_rice, rice, [rice, egg])` | Fails as expected. |
| Category rejection | `recommend(boiled_egg, pasta, [egg, water])` | Fails as expected. |
| Bangus recipe | `recommend(fried_bangus, fish, [bangus, vinegar, garlic, black_peppercorns, salt, oil])` | Succeeds. |
| Missing fish ingredient | `recommend(fried_bangus, fish, [bangus, garlic, black_peppercorns, salt, oil])` | Fails as expected. |
| Measured recipe details | `recipe_details(avocado_toast, 1, Ingredients, Steps)` | Has quantities and three cooking steps. |
| Partial match | `recommendation_match(egg_fried_rice, rice, [rice], Score, Missing)` | Score is 33; missing list is `[egg, oil]`. |
| Ranking | Rank rice recipes with `[rice, egg, oil, garlic]` | `egg_fried_rice` is first with score 100. |

## 4. Team contributions & sources

**Group members and responsibilities:** To be completed by the group.

**GitHub repository:** <https://github.com/Charisse1449/food-recommendation-expert-system>

**Recipe sources:** Simplified ingredient lists are referenced in [`sources.md`](sources.md), including BBC Good Food, Panlasang Pinoy (including the three bangus recipes), and Allrecipes.

**Tools and assistance:** The application uses SWI-Prolog and standard browser technologies (HTML, CSS, and JavaScript). AI assistance was used during development; the group should review and be prepared to explain all submitted code.
