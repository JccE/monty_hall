require_relative "models/door.rb"
require_relative "models/game.rb"
require_relative "models/contestant.rb"

TEN_THOUSAND = 10000
FIVE_THOUSAND = 5000

results = {
  'switched': 0,
  'wins': 0
}

# Contestant spins up game
game = Game.new
@contestant_game = Contestant.new(game)

# p contestant.play_game

# Populate Game with new door array
# game.create_door_array

# Contestant chooses door, returns door_choice arr
@contestant_game.pick_door

# Game opens falsey door that is not contestant's door or prize door, returns door
game.open_falsey_door

# Return array of last choices
# p game.remaining_doors
game.switch_doors

@c = @contestant_game
p @c
