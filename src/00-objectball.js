// Write your code here
function gameObject() {
  return {
    // build up the object manually here
  }
}

// * The top level of the object has two keys: `"home"`, for the home team, and `"away"`, for the away team.
// * The values of the `"home"` and `"away"` keys are objects too. These objects have the following keys:
//   * `"teamName"`
//   * `"colors"`
//   * `"players"`
// * The `teamName` key points to a string of the team name.
// * The `colors` key points to an array of strings that are that team's colors.
// * The `players` key points to an object of players whose names (as strings) are
//   the keys to a object containing their stats. The values for each player's
//   names and their stats can be found in the table below. The stats keys should
//   be formatted like this:
//   * `"number"`
//   * `"shoe"`
//   * `"points"`
//   * `"rebounds"`
//   * `"assists"`
//   * `"steals"`
//   * `"blocks"`
//   * `"slamDunks"`

// Home Team:
// * team name: Brooklyn Nets
// * colors: Black, White
// * players:
// |          Stat          | Info | Info |  Info | Info | Info   |
// |:------------------:|:-------------:|:------------:|:------------:|:-------------:|:-------------:|
// | **Player Name**    |  Alan Anderson| Reggie Evans | Brook Lopez  | Mason Plumlee | Jason Terry   |
// | **Number**         | 0             | 30           | 11           | 1             | 31            |
// | **Shoe**           | 16            | 14           | 17           | 19            | 15            |
// | **Points**         | 22            | 12           | 17           | 26            | 19            |
// | **Rebounds**       | 12            | 12           | 19           | 12            | 2             |
// | **Assists**        | 12            | 12           | 10           | 6             | 2             |
// | **Steals**         | 3             | 12           | 3            | 3             | 4             |
// | **Blocks**         | 1             | 12           | 1            | 8             | 11            |
// | **Slam Dunks**     | 1             | 7            | 15           | 5             | 1             |

// Away Team:
// * team name: Charlotte Hornets
// * colors: Turquoise, Purple
// * players:
// |        Stat       |     Info          |         Info     |              Info |         Info     |         Info      |               
// |:------------------:|:-----------------:|:-----------------:|:-----------------:|:---------------:|:-----------------:|
// | **Player Name**  | Jeff Adrien     | Bismak Biyombo    | DeSagna Diop      | Ben Gordon      | Brendan Haywood   |
// | **Number**         | 4                 | 0                 | 2                 | 8               | 33                |
// | **Shoe**           | 18                | 16                | 14                | 15              | 15                |
// | **Points**         | 10                | 12                | 24                | 33              | 6                 |
// | **Rebounds**       | 1                 | 4                 | 12                | 3               | 12                |
// | **Assists**        | 1                 | 7                 | 12                | 2               | 12                |
// | **Steals**         | 2                 | 7                 | 4                 | 1               | 22                |
// | **Blocks**         | 7                 | 15                | 5                 | 1               | 5                 |
// | **Slam Dunks**     | 2                 | 10                | 5                 | 0               | 12                |