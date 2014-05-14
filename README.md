---
  tags: hashes, iteration
  languages: ruby
  resources: 1
---

# Hashketball

### Skills: Hashes and Iteration

## Instructions

Great news! You're going to an NBA game! The only catch is that you've been volunteered to keep stats at the game.

Using Nested Hashes, define a game, with two teams, their players, and the players stats:

* The game has two teams
* A team has:
  * name
  * colors (x2)
* Each player should have a:
  * name
  * jersey_number
  * shoe_size
* Each player should have the following stats:
  * points
  * rebounds
  * assists
  * steals
  * blocks
  * slam_dunks

Use the following seed data to structure the data however you'd like. Think about how you might be accessing the data when designing your nested hash structure.

* Home Team = Brooklyn Nets, Colors = Black, White
* Away Team = Charlotte Hornets, Colors = Turquoise, Purple

|                    | Jeff Adrien       | Bismak Biyombo    | DeSagna Diop      | Ben Gordon      | Brendan Haywood   |
|:------------------:|:-----------------:|:-----------------:|:-----------------:|:---------------:|:-----------------:|
| **Team**           | Charlotte Hornets | Charlotte Hornets | Charlotte Hornets | Charlet Hornets | Charlotte Hornets |
| **Number**         | 4                 | 0                 | 2                 | 8               | 33                |
| **Shoe**           | 18                | 16                | 14                | 15              | 15                |
| **Points**         | 10                | 12                | 24                | 33              | 6                 |
| **Rebounds**       | 1                 | 4                 | 12                | 3               | 12                |
| **Assists**        | 1                 | 7                 | 12                | 2               | 12                |
| **Steals**         | 2                 | 7                 | 4                 | 1               | 22                |
| **Blocks**         | 7                 | 15                | 5                 | 1               | 5                 |
| **Slam Dunks**     | 2                 | 10                | 5                 | 0               | 12                |

|                    | Alan Anderson | Reggie Evans | Brook Lopez  | Mason Plumlee | Jason Terry   |
|:------------------:|:-------------:|:------------:|:------------:|:-------------:|:-------------:|
| **Team**           | Brooklyn Nets | Brooklyn Nets| Brooklyn Nets| Brooklyn Nets | Brooklyn Nets |
| **Number**         | 0             | 30           | 11           | 1             | 31            |
| **Shoe**           | 16            | 14           | 17           | 19            | 15            |
| **Points**         | 22            | 12           | 17           | 26            | 19            |
| **Rebounds**       | 12            | 12           | 19           | 12            | 2             |
| **Assists**        | 12            | 12           | 10           | 6             | 2             |
| **Steals**         | 3             | 12           | 3            | 3             | 4             |
| **Blocks**         | 1             | 12           | 1            | 8             | 11            |
| **Slam Dunks**     | 1             | 7            | 15           | 5             | 1             |

Using the power of Ruby, and the hashes you created, write methods to complete the following:

1. Returns your game hash. Call the method `game_hash`.

2. Return the number of points scored for any player, given that player's name as a string. Call the method `num_points_scored`.

3. Return the shoe size for any player, given that player's name. Call the method `shoe_size`.

4. Return both colors for any team, given the team name. Call the method `team_colors`.

5. Return both teams names, given the game_hash. Call the method `team_names`. Note: Since you have a method `game_hash` that
returns your hash, there is no need to pass it in as an argument! You can just call it from within your `team_names` method.

6. Return all the player numbers for a team, given a team name. Call the method `player_numbers`.

7. Return all the stats for a player, given a player's name. The stats should be returned as a hash, which each
stat name as a key and the corresponding stat as a value. Call the method `player_stats`. eg:

    ```bash
    player_stats("Alan Anderson")
    => { :number => 0,
         :shoe => 16,
         :points => 22,
         :rebounds => 12,
         :assists => 12,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 1
       }
    ```

8. Return the number of rebounds for the player with the largest shoe size. Call the method `big_shoe_rebounds`.

**Bonus Questions:**

Define methods to return the answer to the following questions:

1. Which player has the most points? Call the method `most_points_scored`.

2. Which team has the most points? Call the method `winning_team`.

3. Which player has the longest name? Call the method `player_with_longest_name`.

**Super Bonus:**

1. Write a method that returns true if the player with the longest name had the most steals. Call the method `long_name_steals_a_ton?`.

## Resources
* [Codecademy](http://www.codecademy.com/dashboard) - [A Night at the Movies](http://external.codecademy.com/courses/ruby-beginner-en-0i8v1/0/1)
