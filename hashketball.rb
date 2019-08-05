require "pry"

def game_hash
  {
    away: { team_name: 'Charlotte Hornets',
            colors: %w[Turquoise Purple],
            players: [
              { player_name: 'Jeff Adrien',
                number: 4,
                shoe: 18,
                points: 10,
                rebounds: 1,
                assists: 1,
                steals: 2,
                blocks: 7,
                slam_dunks: 2 },
              { player_name: 'Bismack Biyombo',
                number: 0,
                shoe: 16,
                points: 12,
                rebounds: 4,
                assists: 7,
                steals: 22,
                blocks: 15,
                slam_dunks: 10 },
              { player_name: 'DeSagna Diop',
                number: 2,
                shoe: 14,
                points: 24,
                rebounds: 12,
                assists: 12,
                steals: 4,
                blocks: 5,
                slam_dunks: 5 },
              { player_name: 'Ben Gordon',
                number: 8,
                shoe: 15,
                points: 33,
                rebounds: 3,
                assists: 2,
                steals: 1,
                blocks: 1,
                slam_dunks: 0 },
              { player_name: 'Kemba Walker',
                number: 33,
                shoe: 15,
                points: 6,
                rebounds: 12,
                assists: 12,
                steals: 7,
                blocks: 5,
                slam_dunks: 12 }
            ] },
    home: { team_name: 'Brooklyn Nets',
            colors: %w[Black White],
            players: [
              { player_name: 'Alan Anderson',
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1 },
              { player_name: 'Reggie Evans',
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7 },
              { player_name: 'Brook Lopez',
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15 },
              { player_name: 'Mason Plumlee',
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 11,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5 },
              { player_name: 'Jason Terry',
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1 }
            ] }
  }
end

def home_team_name
  game_hash[:home][:team_name]
end

def num_points_scored(player_name_to_find)
  game_hash.each do |location, team_dict|
    team_dict[:players].each do |player|
      if player[:player_name] == player_name_to_find
        return player[:points]
      end
    end
  end
end

def shoe_size(player_name_to_find)
  game_hash.each do |location, team_dict|
    team_dict[:players].each do |player|
      if player[:player_name] == player_name_to_find
        return player[:shoe]
      end
    end
  end
end

def team_colors(team_name_to_find)
  game_hash.each do |location, team_dict|
    if team_dict[:team_name] == team_name_to_find
      return team_dict[:colors]
    end
  end
end

def team_names
  teams = []
  game_hash.each do |location, team_dict|
    teams.push(team_dict[:team_name])
  end
  return teams
end

def player_numbers(team_name_to_find)
  #returns array of jersey numbers for that team
  
  jersey_numbers = []
  game_hash.each do |location, team_dict|
    if team_dict[:team_name] == team_name_to_find
      team_dict[:players].each do |player|
        jersey_numbers.push(player[:number])
      end
    end
  end
  return jersey_numbers
end

def player_stats(player_name_to_find)
  game_hash.each do |location, team_dict|
    team_dict[:players].each do |player|
      if player[:player_name] == player_name_to_find
        stats = {
          number: player[:number],
          shoe: player[:shoe],
          points: player[:points],
          rebounds: player[:rebounds],
          assists: player[:assists],
          steals: player[:steals],
          blocks: player[:blocks],
          slam_dunks: player[:slam_dunks]
        }
        return stats
      end
    end
  end
end

def big_shoe_rebounds
  max_shoe_size = 0
  shoe_size_rebounds = 0
  
  game_hash.each do |location, team_dict|
    team_dict[:players].each do |player|
      if player[:shoe] > max_shoe_size
        max_shoe_size = player[:shoe]
        shoe_size_rebounds = player[:rebounds]
      end
    end
  end
  return shoe_size_rebounds
end


# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#     team_data.each do |attribute, data|
#       #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#       binding.pry
 
#       #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
#       data.each do |data_item|
#           binding.pry
#       end
#     end
#   end
# end

# good_practices

# # ruby hashketball.rb