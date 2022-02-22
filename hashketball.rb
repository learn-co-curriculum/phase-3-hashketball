# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def allPlayers
  game_hash[:home][:players] + game_hash[:away][:players]
end

def findPlayer player
  found_player = allPlayers.find { |playerObj| playerObj[:player_name] == player }
end

def num_points_scored player
  found_player = findPlayer player
  found_player[:points]
end

def shoe_size player
  found_player = findPlayer player
  found_player[:shoe]
end

def team_colors team_name
  if game_hash[:home][:team_name] == team_name
    game_hash[:home][:colors]
  else
    game_hash[:away][:colors]
  end
end

def team_names
  team_names_array = []
  team_names_array.push(game_hash[:home][:team_name], game_hash[:away][:team_name])
end

def player_numbers team_name
  if game_hash[:home][:team_name] == team_name
    players_ary = game_hash[:home][:players]
  else
    players_ary = game_hash[:away][:players]
  end
  numbers_ary = []
  players_ary.each {| player | numbers_ary.push(player[:number])}
  numbers_ary
end

def player_stats name
  allPlayers.find { | player | player[:player_name] == name}
end

def big_shoe_rebounds
  #students.max_by{|k| k[:test_score] }
#=> {:name=>"Kate Saunders", :test_score=>99, :sport=>"hockey"}
  big_shoes = allPlayers.max_by{ | player | player[:shoe]}
  big_shoes[:rebounds]
end

def most_points_scored 
  most_points = allPlayers.max_by{|player| player[:points]}
  most_points[:player_name]
end

def winning_team
  home_points = game_hash[:home][:players].sum {| player| player[:points] }
  away_points = game_hash[:away][:players].sum { |player| player[:points] }
  home_points > away_points ? game_hash[:home][:team_name] : game_hash[:away][:team_name]
end

def player_with_longest_name
  player_long_name = allPlayers.max_by {| player | player[:player_name].length}
  player_long_name[:player_name]
end

def long_name_steals_a_ton
  most_steals = allPlayers.max_by { | player | player[:steals]}
  long_steals = allPlayers.find { |player| player[:player_name] == player_with_longest_name }
  long_steals[:steals] == most_steals[:steals]
end

