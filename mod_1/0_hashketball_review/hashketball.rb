require 'pry'

## Updated data structure

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
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
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
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
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
  
def num_points_scored(given_name)
  # Look through all the players in the array
  # [{player_name: "Edwin", scores: 10}, {}, {}, {}, {}, {}....]
  players = get_all_players

  # Find the player with the 'given_name'
  found_player = found_player(players, given_name)  #"Adrien"
  
  # After finding the player: Get the player's 'points.'?
  # ?????? << What should we have here

  # Return!!!!!
end

def get_all_players
  all_players = game_hash.values.map do |team|
    team[:players]
  end
  # [[{..},{..}],[...]]
  all_players.flatten
end

def found_player(players, name)
  #method to find player.
  players.find do |player|
    player[:player_name] == name
  end
  binding.pry
end


















# Exercise: ========================

# def add_one(arr)
#   # # sandwich pattern : .each
#   # result = []

#   # arr.each do |number|
#   #   result << number + 1
#   # end

#   # .map
  
  
#   arr.map do |number|
#     number + 1
#   end
# end

# add_one([1, 2, 3, 4])
# # Result: [2, 3, 4, 5]


# arr = [1,2,3,4]
# arr.map do |num|
#   100
# end



# # EXERCISE:
# # Define a method called get_names that takes an array of instructors
# # and returns just their names.
instructors = [
  {name: 'Edwin', hometown: 'NY', mood: 'tired'},
  {name: 'Vanessa', hometown: 'IL'},
  {name: 'Patrick', hometown: 'Dallas'}
]

def get_instructor_names(instructors)
  instructors.map do |instructor|
    instructor[:name]
  end
end

arr = (1..100).to_a

arr.select do |num|
  num.even?
end

arr.find do |num|
  num.even?
end

