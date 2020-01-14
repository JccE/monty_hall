require_relative "models/door.rb"
require_relative "models/game.rb"
require_relative "models/contestant.rb"

TEN_THOUSAND = 10000
FIVE_THOUSAND = 5000

results = {
  'switched': 0,
  'wins'
}

# Contestant spins up game
game = Game.new
@contestant_game = Contestant.new(game)

# p contestant.play_game

# Populate Game with new door array
game.create_door_array

# Contestant chooses door, returns door_choice arr
@contestant_game.pick_door

# Game opens falsey door that is not contestant's door or prize door, returns door
game.open_falsey_door

# Return array of last choices
game.remaining_doors

# Switch half of the time
FIVE_THOUSAND.times do
  game.switch_doors
end


# game
@c = @contestant_game
p @c
