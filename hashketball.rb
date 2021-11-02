# Write your code below game_hash
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

def all_players
  game_hash[:home][:players] +  game_hash[:away][:players]
end
def player_stats(player_name)
 all_players.find do |player| 
    player[:player_name] == player_name 
  end
end

def num_points_scored(player_name)
  player = player_stats(player_name)
  player[:points]
end

def shoe_size(player_name)
  player = player_stats(player_name)
  player[:shoe]
end

def find_team(team_name)
  # #find on with a hash returns an array with the first key and value that match the condition
  team_info = game_hash.find do |location, team_data|
    team_data[:team_name] == team_name
  end
  # return just the value (team_data) from the .find method
  team_info[1]
end

def team_colors(team_name)
  team = find_team(team_name)
  team[:colors]
end

def team_names
  game_hash.map do |location, team_data|
    team_data[:team_name]
  end
end

def player_numbers(team_name)
  team = find_team(team_name)
  team[:players].map do |player|
    player[:number]
  end
end

def big_shoe_player
  # https://ruby-doc.org/core-3.0.1/Enumerable.html#method-i-max_by
  all_players.max_by do |player|
    player[:shoe]
  end
end

def big_shoe_rebounds
  big_shoe_player[:rebounds]
end
# num_points_scored('Kemba Walker')

class Team

  attr_accessor :team_name, :colors, :players

  def initialize(team_name, colors, players) 
    @name = team_name 
    @colors = colors
    @players = players
  end 

  def addPlayer(player)
     player = Player.new(player[:player_name], player[:number], player[:shoe], player[:points], player[:rebounds], player[:assists], player[:steals], player[:blocks], player[:slam_dunks], self)
     @players << player
     player
  end

end
# (player_name, number, shoe, points, rebounds, assists, steals, blocks, slam_dunks)
class Player
  attr_accessor :player_name, :number, :shoe, :points, :rebounds,:assists, :steals, :blocks, :slam_dunks, :team

  def initialize(player_name, number, shoe, points, rebounds, assists, steals, blocks, slam_dunks, team)
    @player_name = player_name
     @number = number
     @shoe = shoe
     @points = points
     @rebounds = rebounds
     @assists = assists
     @steals = steals
     @blocks = blocks
     @slam_dunks = slam_dunks
     @team = team
  end

end
homePlayers = [
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

home = Team.new("Brooklyn Nets",["Black", "White"], homePlayers )
home.addPlayer(homePlayers[0])

# puts home
puts home.players.last.player_name


