require 'pry'

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

def num_points_scored(player_name)
  game_hash.each do |location, attributes|
    #binding.pry
    attributes.each do |team_attributes, values|
      #binding.pry
      case team_attributes
      when :players
        #binding.pry
        values.each do |player_index|
          #binding.pry
          if player_index[:player_name]==player_name
            #binding.pry
            return player_index[:points]
          end
        end
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |location, attributes|
    attributes.each do |team_attributes, values|
      case team_attributes
      when :players
        values.each do |player_index|
          if player_index[:player_name]==player_name
            return player_index[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, attributes|
    if attributes[:team_name]==team_name
      return attributes[:colors]
    end
  end
end

def team_names()
  game_hash.map do |location, attributes|
    attributes[:team_name]
  end
end

def player_numbers(team_name)
  numbers_array=[]
  game_hash.each do |location, attributes|
    if attributes[:team_name]==team_name
      attributes.each do |team_attributes, values|
        if team_attributes == :players
          #binding.pry
          values.each do |player_index|
            #binding.pry
            numbers_array.push(player_index[:number])
          end
        end
      end
    end
  end
  return numbers_array
end

def player_stats(players_name)
  game_hash.each do |location, attributes|
    attributes.each do |team_attributes, values|
      if team_attributes==:players
        values.each do |player_index|
          if player_index[:player_name]==players_name
            return player_index
          end
        end
      end
    end
  end
end

def big_shoe_rebounds()
  shoe_size=0
  rebounds=0
  game_hash.each do |location, attributes|
    attributes.each do |team_attributes, values|
      if team_attributes==:players
        values.each do |player_index|
          if player_index[:shoe]>shoe_size
            shoe_size=player_index[:shoe]
            rebounds=player_index[:rebounds]
          end
        end
      end
    end
  end
  return rebounds
end

def most_points_scored()
  points=0
  player_name=""
  game_hash.each do |location, attributes|
    attributes.each do |team_attributes, values|
      if team_attributes==:players
        values.each do |player_index|
          if player_index[:points]>points
            points=player_index[:points]
            player_name=player_index[:player_name]
          end
        end
      end
    end
  end
  binding.pry
  return player_name
end

def winning_team()
  high_score=0
  winning_team=""
  game_hash.each do |location, attributes|
    team_score=0
    current_team=attributes[:team_name]
    attributes[:players].each do |player|
      team_score+=player_index[:points]
    end
  end
end