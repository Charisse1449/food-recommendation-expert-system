# Food Recommendation Expert System

A food recommendation application in which SWI-Prolog checks recipes against the ingredients a user has. The browser interface is optional: the recommendation rules and knowledge base run in Prolog, and the original console program is still available.

## Purpose and Features

- Recommend recipes by category and available ingredients.
- Rank partial matches by the percentage of required ingredients available and show what is missing.
- Search and select available ingredients with checkboxes on the Recommend Food page.
- Open recipe details inside the app without leaving the page.
- Open recipe details inside the app. The original 42 recipes include measured ingredient quantities and cooking steps; the expanded catalog shows required ingredients for matching.
- View measured ingredient quantities and cooking steps for recipes with available details. Non-Bangus quantities are clearly marked as estimates. Newly added recipes currently provide their required ingredient lists.
- Open recipe details from recommendation results or saved favorites.
- Keep favorites and recommendation history in the browser.
- Run the rules directly in SWI-Prolog or through the local HTTP/JSON interface.

The knowledge base currently contains **142 Filipino recipes, 209 distinct ingredients, and eight categories**. This includes 100 additional recipes across dinner, soup, fish, snack, breakfast, and dessert categories. The expanded catalog provides ingredient matching for all 100 additions; ten now include measured quantities and cooking steps, while those details remain to be added for 90. Time, budget, and dietary filters are not enabled because those attributes are not modeled in the knowledge base.

## Repository Structure

```text
food-recommendation-expert-system/
├── README.md
├── src/
│   └── prolog/
│       ├── knowledge_base.pl
│       ├── expanded_recipes.pl
│       ├── main.pl
│       └── web_server.pl
├── frontend/
│   └── index.html
├── tests/
│   └── tests.pl
└── docs/
    ├── Project_Documentation.pdf
    ├── Project_Documentation.md
    └── sources.md
```

Optional screenshots or other evidence can be stored in `assets/screenshots/`.

## Technology

- **SWI-Prolog** – for recipe facts, matching, scoring, and ranking.
- **SWI-Prolog HTTP server** – for the local JSON API.
- **HTML, CSS, and JavaScript** – for the browser interface.

## Install and Run

1. Install [SWI-Prolog](https://www.swi-prolog.org/Download.html).
2. Clone or download this repository and open PowerShell in the project folder.
3. Start the web application:

   ```powershell
   swipl -q -s src/prolog/web_server.pl -g "start_server"
   ```

   **Windows note:** If PowerShell does not recognize `swipl`, use the full path to the SWI-Prolog executable:

   ```powershell
   & "C:\Program Files\swipl\bin\swipl.exe" -q -s src/prolog/web_server.pl -g "start_server"
   ```

   Alternatively, add the SWI-Prolog `bin` directory to your system PATH.

4. Open [http://127.0.0.1:8000](http://127.0.0.1:8000) in a browser. Press `Ctrl+C` in PowerShell to stop the server.

The server listens only on `127.0.0.1`.

To run the original console interface:

```powershell
swipl -q -s src/prolog/main.pl -g main -t halt
```

## Prolog Logic

The project demonstrates several course concepts:

- **Knowledge representation:** `food/3` facts store each dish, category, and required ingredient list.
- **Expanded catalog:** `expanded_recipes.pl` adds 100 Filipino recipes; the options API derives categories and available ingredients from the complete catalog.
- **Unification and backtracking:** `recommend/3` searches matching `food/3` facts and succeeds for each recipe whose category and ingredients fit.
- **Recursion and list processing:** `has_all_ingredients/2` recursively checks the recipe's required-ingredient list.
- **Negation:** `score_ingredients/6` uses negation to collect required ingredients the user does not have.
- **Decision and ranking:** `ranked_recommendations/3` scores candidates and sorts them by score, then dish name.
- **Recipe details:** `recipe_details/4` stores ingredient quantities, serving counts, and cooking steps for recipes with available details. Original recipes have measured details where available, while non-Bangus quantities are marked as estimates. Newly expanded catalog entries expose their required ingredients and can be recommended, but do not yet include measured recipe instructions.

Open the knowledge base directly with:

```powershell
swipl -q -s src/prolog/knowledge_base.pl
```

Then try these example queries:

```prolog
?- recommend(egg_fried_rice, rice, [rice, egg, oil]).
true.

?- recommend(egg_fried_rice, rice, [rice, egg]).
false.

?- recommend(fried_bangus, fish,
             [bangus, vinegar, garlic, black_peppercorns, salt, oil]).
true.

?- recommendation_match(egg_fried_rice, rice, [rice], Score, Missing).
Score = 33,
Missing = [egg, oil].

?- ranked_recommendations(rice, [rice, egg, oil, garlic], [Top|_]),
   get_dict(name, Top, Dish),
   get_dict(score, Top, Score).
Dish = egg_fried_rice,
Score = 100.
```

`recommend/3` requires every ingredient. `recommendation_match/5` and `ranked_recommendations/3` provide the partial-match behavior used by the web interface.

## Test Evidence

Run the automated test suite:

```powershell
swipl -q -s tests/tests.pl -g run_tests -t halt
```

The suite contains **69 passing PlUnit tests**. These representative cases were run against the Prolog knowledge base:

| Case | Query/Input | Actual Result |
|---|---|---|
| Complete ingredient match | `recommend(egg_fried_rice, rice, [rice, egg, oil])` | Succeeds (`true`). |
| Missing required ingredient | `recommend(egg_fried_rice, rice, [rice, egg])` | Rejected (`false`). |
| Wrong category | `recommend(boiled_egg, pasta, [egg, water])` | Rejected (`false`). |
| Bangus recipe | `recommend(fried_bangus, fish, [bangus, vinegar, garlic, black_peppercorns, salt, oil])` | Succeeds (`true`). |
| Missing fish ingredient | `recommend(fried_bangus, fish, [bangus, garlic, black_peppercorns, salt, oil])` | Rejected (`false`). |
| Measured recipe details | `recipe_details(avocado_toast, 1, Ingredients, Steps)` | Includes 2 bread slices, 1/2 avocado, 1 teaspoon oil, and 3 steps. |
| Partial-match explanation | `recommendation_match(egg_fried_rice, rice, [rice], Score, Missing)` | `Score = 33`, `Missing = [egg, oil]`. |
| Ranked recommendation | Rank rice recipes with `[rice, egg, oil, garlic]` | `egg_fried_rice` is first with a score of `100`. |

## Documentation and Group Contributions

The four-section project report is in [`docs/Project_Documentation.pdf`](docs/Project_Documentation.pdf), with an editable source at [`docs/Project_Documentation.md`](docs/Project_Documentation.md).

**GitHub repository:**  
[https://github.com/Charisse1449/food-recommendation-expert-system](https://github.com/Charisse1449/food-recommendation-expert-system)

**Group members and responsibilities:** To be completed by the group before submission.

## Sources

Recipe ingredient lists are simplified from the references recorded in [`docs/sources.md`](docs/sources.md). The reference projects in the course handout are used for inspiration only; this project is an original food recommendation application.
