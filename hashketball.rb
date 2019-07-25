# Write your code here!
require "pry"


def game_hash
  game_hash = {
    :home =>{
      :team_name => "Brooklyn Nets", 
      :colors => ["Black", "White"], 
      :players => [
        {"Alan Anderson" => {
          :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1
          }
        },
        {"Reggie Evans" => {
          :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7
          }
        },
        {"Brook Lopez" => {
          :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15
          }
        },
        {"Mason Plumlee" => {
          :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5
          }
        },
        {"Jason Terry" => {
          :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1
          }
        }
      ]
    },
          
    :away => {
      :team_name => "Charlotte Hornets", 
      :colors => ["Turquoise", "Purple"], 
      :players => [
        {"Jeff Adrien" => {
          :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}},
        {"Bismack Biyombo" =>{
          :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10}},
        {"DeSagna Diop" =>{
          :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5}},
        {"Ben Gordon" =>{
          :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0}},
        {"Kemba Walker" => {
          :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}}
      ]
    }
  }
  return game_hash
end

def num_points_scored(player)
  game_hash.each {|each_team|
    each_team[1][:players].each {|player_list|
      if player_list.keys.include?(player)
        return player_list[player][:points]
      end
    }
  }
end

def shoe_size(player)
  game_hash.each {|i|
    i[1][:players].each { |j|
      if j.keys.include?(player)
        return j[player][:shoe]
      end 
    }
  }
end 

def team_colors(team)
  game_hash.each {|which_team|
    if which_team[1][:team_name] == team
      return which_team[1][:colors]
    end
  }
end

def team_names
  teams = []
  game_hash.each { |i| 
    teams << i[1][:team_name]
  }
  return  teams
end

def player_numbers(team)
  the_numbers = []
  game_hash.each {|team_ea|
    if team_ea[1][:team_name] == team
      team_ea[1][:players].each {|i|
        i.each {|j|
          the_numbers << j[1][:number]
        }
      }
    end
  }
  return the_numbers
end

def player_stats(player)
  game_hash.each {|i|
    i[1][:players].each {|j|
      if j.keys.include?(player)
        return  j[player]
      end 
    }
  }
end


def big_shoe_rebound
  big_shoe_rebound = 0
  game_hash.each do |findshoe|
    findshoe[1][:player].each do |(key, value)|
      if value[:shoe] > big_shoe
        big_shoe_rebound = value[:rebounds]
    end 
  end 
  return big_shoe_rebound
end 

def most_points_scored
  scored = 0
  game_hash.each do |i|
    i[1][:players].each do |key, value|
      if value[:points] > scored
        scored = value[:points]
      end 
    end
  end 
  return scored
end 

def winning_team
  
  return
end 

def player_with_longest_name
  
  return
end 

def long_name_steals_a_ton?
  
  return
end 
