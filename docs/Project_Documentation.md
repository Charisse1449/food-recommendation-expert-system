# Food Recommendation Expert System

## 1. Project Overview

The Food Recommendation Expert System helps users find recipes that fit the ingredients they have. It is intended for people choosing a meal from a known recipe collection. SWI-Prolog makes the recommendation decisions, while a local browser interface makes the system easier to use.

### Objectives

1. Represent recipes, categories, and required ingredients as Prolog knowledge.
2. Recommend exact and partial recipe matches, explaining missing ingredients.
3. Provide a usable web interface while keeping the reasoning available for direct Prolog queries.

The application includes searchable ingredient checkboxes in the recommendation form, category selection, ranked recommendations, in-app recipe details, favorites, and recommendation history. Clicking a recommended or saved recipe opens its details without leaving the app.

The knowledge base contains **142 recipes and 209 distinct ingredients across eight categories**. The original 42 recipes and the first ten expanded noodle recipes have measured ingredient lists, servings, and cooking steps. The other 90 expanded recipes currently provide required ingredients for matching and ingredient display.

## 2. Implementation and Prolog Logic

### Technology Stack

- **SWI-Prolog:** Handles recipe facts, ingredient matching, scoring, and recommendation ranking.
- **SWI-Prolog HTTP/JSON libraries:** Provide communication between the Prolog backend and browser interface.
- **HTML, CSS, and JavaScript:** Build the browser-based user interface.

### System Flow

The browser requests recipe options from the local Prolog HTTP server, submits a category and selected ingredients, and displays the ranked results returned by Prolog.

Recipe facts and matching and ranking decisions are maintained in `src/prolog/knowledge_base.pl`. The file `src/prolog/web_server.pl` exposes the system functionality to the browser. The console entry point remains in `src/prolog/main.pl`, and the user interface is located in `frontend/index.html`.

### Important Prolog Predicates

- `food/3` represents each recipe as a dish, category, and required-ingredient list.
- `has_all_ingredients/2` recursively checks a required-ingredient list.
- `recommend/3` applies category matching and strict ingredient matching.
- `recommendation_match/5` calculates a match percentage and identifies missing ingredients.
- `ranked_recommendations/3` builds candidate results and sorts them by score, then dish name.
- `recipe_details/4` stores measured ingredient lists, servings, and cooking steps for the original recipes and ten source-based expanded noodle dishes. Other expanded catalog entries supply ingredient requirements used for matching.

These predicates demonstrate knowledge representation, unification, backtracking over recipe facts, recursion, list processing, and negation.

### Representative Prolog Queries

```prolog
?- recommend(egg_fried_rice, rice, [rice, egg, oil]).
true.

?- recommendation_match(egg_fried_rice, rice, [rice], Score, Missing).
Score = 33,
Missing = [egg, oil].
```

The first query checks whether all required ingredients are available. The second query calculates a partial-match score and identifies the missing ingredients.

## 3. How to Run and Test Results

### Requirements

- SWI-Prolog installed on the computer.
- The project repository downloaded or cloned.
- A web browser for accessing the application.

### Running the Web Application

Open PowerShell in the project directory and execute:

```powershell
& "C:\Program Files\swipl\bin\swipl.exe" -q -s src/prolog/web_server.pl -g "start_server"
```

Open the following address in a browser:

[http://127.0.0.1:8000](http://127.0.0.1:8000)

To stop the server, press `Ctrl+C` in PowerShell.

The server listens only on `127.0.0.1`.

### Running the Console Interface

The original console interface can also be executed using:

```powershell
& "C:\Program Files\swipl\bin\swipl.exe" -q -s src/prolog/main.pl -g main -t halt
```

### Running Automated Tests

Execute the following command in PowerShell:

```powershell
& "C:\Program Files\swipl\bin\swipl.exe" -q -s tests/tests.pl -g run_tests -t halt
```

The **69-test PlUnit suite passed**.

### Representative Test Results

| Test | Input | Actual Result |
|---|---|---|
| Complete match | `recommend(egg_fried_rice, rice, [rice, egg, oil])` | Succeeds. |
| Missing ingredient | `recommend(egg_fried_rice, rice, [rice, egg])` | Fails as expected. |
| Category rejection | `recommend(boiled_egg, pasta, [egg, water])` | Fails as expected. |
| Bangus recipe | `recommend(fried_bangus, fish, [bangus, vinegar, garlic, black_peppercorns, salt, oil])` | Succeeds. |
| Missing fish ingredient | `recommend(fried_bangus, fish, [bangus, garlic, black_peppercorns, salt, oil])` | Fails as expected. |
| Measured recipe details | `recipe_details(avocado_toast, 1, Ingredients, Steps)` | Has quantities and three cooking steps. |
| Partial match | `recommendation_match(egg_fried_rice, rice, [rice], Score, Missing)` | Score is 33; missing list is `[egg, oil]`. |
| Ranking | Rank rice recipes with `[rice, egg, oil, garlic]` | `egg_fried_rice` is first with score 100. |

## 4. Team Contributions and Sources

### Group Members and Responsibilities

To be completed by the group before final submission.

### GitHub Repository

[https://github.com/Charisse1449/food-recommendation-expert-system](https://github.com/Charisse1449/food-recommendation-expert-system)

### Recipe Sources

Simplified ingredient lists are referenced in [`sources.md`](sources.md), including:

- BBC Good Food
- Panlasang Pinoy, including the three Bangus recipes
- Allrecipes

The recipe references provide the basis for the documented ingredient lists and recipe details.

### Tools and Assistance

The application uses SWI-Prolog and standard browser technologies, including HTML, CSS, and JavaScript.

AI assistance was used during development. The group should review the implementation and be prepared to explain the submitted code and system functionality.
