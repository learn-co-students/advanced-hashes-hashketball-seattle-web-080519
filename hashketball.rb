require "pry"

# Write your code here!

def game_hash
    {
      home: { team_name: "Brooklyn Nets",
              colors: ["Black", "White"],
              players: [
                { player_name: "Alan Anderson",
                  number: 0,
                  shoe: 16,
                  points: 22,
                  rebounds: 12,
                  assists: 12,
                  steals: 3,
                  blocks: 1,
                  slam_dunks: 1 },
                { player_name: "Reggie Evans",
                  number: 30,
                  shoe: 14,
                  points: 12,
                  rebounds: 12,
                  assists: 12,
                  steals: 12,
                  blocks: 12,
                  slam_dunks: 7 },
                { player_name: "Brook Lopez",
                  number: 11,
                  shoe: 17,
                  points: 17,
                  rebounds: 19,
                  assists: 10,
                  steals: 3,
                  blocks: 1,
                  slam_dunks: 15 },
                { player_name: "Mason Plumlee",
                  number: 1,
                  shoe: 19,
                  points: 26,
                  rebounds: 11,
                  assists: 6,
                  steals: 3,
                  blocks: 8,
                  slam_dunks: 5 },
                { player_name: "Jason Terry",
                  number: 31,
                  shoe: 15,
                  points: 19,
                  rebounds: 2,
                  assists: 2,
                  steals: 4,
                  blocks: 11,
                  slam_dunks: 1 }
              ] },
        away: { team_name: "Charlotte Hornets",
                colors: ["Turquoise", "Purple"],
                players: [
                  { player_name: "Jeff Adrien",
                    number: 4,
                    shoe: 18,
                    points: 10,
                    rebounds: 1,
                    assists: 1,
                    steals: 2,
                    blocks: 7,
                    slam_dunks: 2 },
                  { player_name: "Bismack Biyombo",
                    number: 0,
                    shoe: 16,
                    points: 12,
                    rebounds: 4,
                    assists: 7,
                    steals: 22,
                    blocks: 15,
                    slam_dunks: 10 },
                  { player_name: "DeSagna Diop",
                    number: 2,
                    shoe: 14,
                    points: 24,
                    rebounds: 12,
                    assists: 12,
                    steals: 4,
                    blocks: 5,
                    slam_dunks: 5 },
                  { player_name: "Ben Gordon",
                    number: 8,
                    shoe: 15,
                    points: 33,
                    rebounds: 3,
                    assists: 2,
                    steals: 1,
                    blocks: 1,
                    slam_dunks: 0 },
                  { player_name: "Kemba Walker",
                    number: 33,
                    shoe: 15,
                    points: 6,
                    rebounds: 12,
                    assists: 12,
                    steals: 7,
                    blocks: 5,
                    slam_dunks: 12 }
                ] 
          
        }
    }
end

def num_points_scored(given_player_name_to_search_with)
  #iterate through game_hash and return a list/array of players
  #iterate through the list of players to find the specific obj who's name matches the name entered
  #return found player's points
  
  game_hash.each do |court, team|
    #attribute cuz from obj
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == given_player_name_to_search_with
            return player[:points]
          end
        end
      end
    end
  end
end
  

def shoe_size(given_player_name_to_search_with)
  game_hash.each do |court, team|
    #attribute cuz from obj
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == given_player_name_to_search_with
            return player[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(given_team_name_to_search_with)
  game_hash.each do |court, team|
    if team[:team_name] == given_team_name_to_search_with
      return team[:colors]
    end
  end
end

def team_names
  #wants new array returned so .map is shorter to use, .each can be used
  game_hash.map do |court, team|
    team[:team_name]
  end
end

#using .each instead of .map: since each doesnt make a new array, new array needs to be created
# def team_names
#   arrayToBeReturned = []
  
#   game_hash.each do |court, team|
#     arrayToBeReturned << team[:team_name]
#   end
#   arrayToBeReturned
# end

def player_numbers(team_name_to_be_checked)
  #return array of jersey numbers for that team
  arrayToBeReturned = []
  game_hash.each do |court, team|
    if team[:team_name] == team_name_to_be_checked
      team.each do |attribute, data|
        #players data
        if attribute == :players
         data.each do |playerStats|
            arrayToBeReturned << playerStats[:number]
         end
        end
      end
    end
  end
  return arrayToBeReturned
end

def player_stats(given_player_name_to_search_with)
  #returns hash
  hashWithStatsToBeReturned = {}
  
  game_hash.each do |court, team|
    #iterating over attributes: :team_name, :color, :players
    team.each do |attribute, data|
      
      # if key(attribute) is :players, we iterate over that data, which in this case is arrays each players.
      if attribute == :players 
        #iterate over each player
        data.each do |player|
          if player[:player_name] == given_player_name_to_search_with
            #set the hash with that given player's data, but delete playerName key : val pair
            hashWithStatsToBeReturned = player.delete_if do |key, val|
              key == :player_name
            end
          end
        end
      end
    end
  end
  hashWithStatsToBeReturned
end

def big_shoe_rebounds
  shoeSize = 0
  reb = 0
  
  game_hash.each do |court, team|
    team[:players].each do |player|
      if player[:shoe] > shoeSize
        shoeSize = player[:shoe]
        reb = player[:rebounds]
      end
    end
  end
  return reb
end