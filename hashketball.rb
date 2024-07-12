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

def all_player_stats
  all_players =  game_hash[:home][:players].concat(game_hash[:away][:players])
end

def player_stats(name)
  result = all_player_stats.find { |player| player[:player_name] == name }
end

def num_points_scored(name)
  player_stats(name)[:points]
end

def shoe_size(name)
  player_stats(name)[:shoe]
end

def team_colors(team)
  game_hash.each do |key, value|
    if value[:team_name] == team
      return value[:colors]
    end
  end
end

def team_names()
  game_hash.map { |key, value| value[:team_name] }
end

def player_numbers(team)
  team_data = game_hash.find { |key, value| value[:team_name] == team }
  team_data.last[:players].map { |player| player[:number]}
end

def big_shoe_rebounds
  biggest_shoe = {shoe: 0, rebounds: 0}
  all_player_stats.each do |player|
    if player[:shoe] > biggest_shoe[:shoe]
      biggest_shoe = { shoe: player[:shoe], rebounds: player[:rebounds] }
    end
  end
  biggest_shoe[:rebounds]
end

def most_points_scored
  max_points = {player_name: "" , points: 0}
  all_player_stats.each do |player|
    if player[:points] > max_points[:points]
      max_points = { player_name: player[:player_name], points: player[:points] }
    end
  end
  max_points[:player_name]
end

def winning_team
  home = game_hash[:home][:players].sum { |player|  player[:points] }
  away = game_hash[:away][:players].sum { |player|  player[:points] }
  home > away ? game_hash[:home][:team_name] : game_hash[:away][:team_name]
end

def player_with_longest_name
  all_names = all_player_stats.map { |player| player[:player_name] }
  longest_name = ""
  all_names.each do |name|
    if name.size > longest_name.size
      longest_name = name
    end
  end
  longest_name
end

def long_name_steals_a_ton
  result = player_stats(player_with_longest_name)[:steals]
  most_steals = 0
  all_player_stats.each do |player|
    if player[:steals] > result
      most_steals = player[:steals]
    end
  end
  result > most_steals ? true : false
end
