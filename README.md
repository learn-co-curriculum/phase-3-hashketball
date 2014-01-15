---
  tags: hashes, iteration
  languages: ruby
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
* Each team should have 5 players
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

Home Team = Brooklyn Nets, Colors = Black, White
Away Team = Charlotte Hornets, Colors = Turquoise, Purple

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

Using the power of Ruby, and the hashes you created above, write methods to complete the following questions:

1. Return the number of points scored for any player, given that player's name as a string.

2. Return the shoe size for any player, given that player's name.

3. Return both colors for any team, given the team name.

4. Return both teams names, given the game_hash.

5. Return all the player numbers for a team, given a team name.

6. Return all the stats for a player, given a player's name.

7. Return the number of rebounds for the player with the largest shoe size.

**Bonus Questions:**

Define methods to return the answer to the following questions:

1. Which player has the most points?

2. Which team has the most points?

3. Which player has the longest name?

**Super Bonus:**

Write a method that returns true if the player with the longest name had the most steals