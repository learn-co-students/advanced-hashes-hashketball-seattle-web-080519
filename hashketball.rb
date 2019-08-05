def game_hash
  {
    :home =>
  {:team_name => "Brooklyn Nets",
    :colors => ["Black", "White"], 
    :players =>{
      "Alan Anderson" => 
      {:number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1 },
        
        "Reggie Evans" =>
        {:number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7 },
          
          "Brook Lopez" =>
          {:number => 11,
            :shoe => 17,
            :points => 17,
            :rebounds => 19,
            :assists => 10,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 15 },
            
            "Mason Plumlee" =>
            {:number => 1,
              :shoe => 19,
              :points => 26,
              :rebounds => 11,
              :assists => 6,
              :steals => 3,
              :blocks => 8,
              :slam_dunks => 5 },
              
              "Jason Terry" =>
              {:number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1 }
      }
  },
    :away => 
    {:team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"], 
      :players =>{
        "Jeff Adrien" =>
        {:number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2 },
          
          "Bismack Biyombo" =>
          {:number => 0,
            :shoe => 16,
            :points => 12,
            :rebounds => 4,
            :assists => 7,
            :steals => 22,
            :blocks => 15,
            :slam_dunks => 10 },
            
          "DeSagna Diop" =>
          {:number => 2,
            :shoe => 14,
            :points => 24,
            :rebounds => 12,
            :assists => 12,
            :steals => 4,
            :blocks => 5,
            :slam_dunks => 5 },
            
          "Ben Gordon" =>
          {:number => 8,
            :shoe => 15,
            :points => 33,
            :rebounds => 3,
            :assists => 2,
            :steals => 1,
            :blocks => 1,
            :slam_dunks => 0 },
            
          "Kemba Walker" =>
          {:number => 33,
            :shoe => 15,
            :points => 6,
            :rebounds => 12,
            :assists => 12,
            :steals => 7,
            :blocks => 5,
            :slam_dunks => 12 }
      }
   }
}
end

def num_points_scored(name)
game_hash.each do |teams, data|
  data[:players].each do |player_name, player_points|
    if player_name == name
      return game_hash[teams] [:players] [name] [:points]
      end
    end
  end
end

num_points_scored("Jeff Adrien")

def shoe_size(name)
  game_hash.each do |teams, data|
    data[:players].each do |player_name, player_shoe|
      if player_name == name
        return game_hash[teams] [:players] [name] [:shoe]
      end
    end
  end
end

shoe_size("Jeff Adrien")

def team_colors(teamname)
  array = []
  game_hash.each do |teamname, data|
    data.each do |key, value|
      if key == :colors
       array.push(value)
      end
    end
    return array
  end
end

team_colors("Brooklyn Nets")

def team_names
  array = []
  game_hash.each do |team, data|
    data.each do |key, value|
      if key == :team_name
        array.push(value)
      end
    end
  end
  return array
end

team_names

def player_numbers(team_name)
  array = []
  game_hash.each do |team_name, data|
    data[team_name].each do |key, value|
      if value == team_name
        array.push(game_hash[team_name] [:players] [:numbers])
      end
    end
  end
  return array
end

def player_stats(name)
  hash = game_hash
  hash.each do |team_name, data|
    data[:players].each do |player_name, player_data|
      if player_name == name 
        return hash[team_name] [:players] [name]
      end
    end
  end
end