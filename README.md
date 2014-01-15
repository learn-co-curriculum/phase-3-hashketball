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

|                  | Jeff Adrien       | Bismak Biyombo    | DeSagna Diop      | Ben Gordon      | Brendan Haywood   | Alan Anderson | Reggie Evans | Brook Lopez  | Mason Plumlee | Jason Terry   |
|------------------|-------------------|-------------------|-------------------|-----------------|-------------------|---------------|--------------|--------------|---------------|---------------|
|: **Team**       :| Charlotte Hornets | Charlotte Hornets | Charlotte Hornets | Charlet Hornets | Charlotte Hornets | Brooklyn Nets | Brooklyn Nets| Brooklyn Nets| Brooklyn Nets | Brooklyn Nets |
|: **Number**     :|
|: **Shoe**       :|
|: **Points**     :|
|: **Rebounds**   :| 
|: **Assists**    :|
|: **Steals**     :|
|: **Blocks**     :|
|: **Slam Dunks** :|

game = {
  :home => { :team_name => "Charlotte Hornets",
             :colors => ["Turquoise", "Purple"],
             :players => [
               {:player_name => "Jeff Adrien",
                :number => 4,
                :shoe_size => 18,
                :stats => {
                  :points => 10,
                  :rebounds => 1,
                  :assists => 1,
                  :steals => 2,
                  :blocks => 7,
                  :slam_dunks => 2
                 }
                },
               {:player_name => "Bismak Biyombo",
                :number => 0,
                :shoe_size => 16,
                :stats => {
                  :points => 12,
                  :rebounds => 4,
                  :assists => 7,
                  :steals => 7,
                  :blocks => 15,
                  :slam_dunks => 10
                  }
                },
               {:player_name => "DeSagna Diop",
                :number => 2,
                :shoe_size => 14,
                :stats => {
                  :points => 24,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 4,
                  :blocks => 5,
                  :slam_dunks => 5
                  }
                },
               {:player_name => "Ben Gordon",
                :number => 8,
                :shoe_size => 15,
                :stats => {
                  :points => 33,
                  :rebounds => 3,
                  :assists => 2,
                  :steals => 1,
                  :blocks => 1,
                  :slam_dunks => 0
                  }
                },
               {:player_name => "Brendan Haywood",
                :number => 33,
                :shoe_size => 15,
                :stats => {
                  :points => 6,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 22,
                  :blocks => 5,
                  :slam_dunks => 12
                  }
                }
              ]
          },
  :away => { :team_name => "Brooklyn Nets",
             :colors => ["Black", "White"],
             :players => [
               {:player_name => "Alan Anderson",
                :number => 0,
                :shoe_size => 16,
                :stats => {
                  :points => 22,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 1
                  }
                },
               {:player_name => "Reggie Evans",
                :number => 30,
                :shoe_size => 14,
                :stats => {
                  :points => 12,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 12,
                  :blocks => 12,
                  :slam_dunks => 7
                  }
                },
               {:player_name => "Brook Lopez",
                :number => 11,
                :shoe_size => 17,
                :stats => {
                  :points => 17,
                  :rebounds => 19,
                  :assists => 10,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 15
                  }
                },
               {:player_name => "Mason Plumlee",
                :number => 1,
                :shoe_size => 19,
                :stats => {
                  :points => 26,
                  :rebounds => 12,
                  :assists => 6,
                  :steals => 3,
                  :blocks => 8,
                  :slam_dunks => 5
                  }
                },
               {:player_name => "Jason Terry",
                :number => 31,
                :shoe_size => 15,
                :stats => {
                  :points => 19,
                  :rebounds => 2,
                  :assists => 2,
                  :steals => 4,
                  :blocks => 11,
                  :slam_dunks => 1
                  }
                }
               ]
  
  }
}

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