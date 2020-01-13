require_relative "models/door.rb"
require_relative "models/game.rb"


# Spin up game
game = Game.new

# Populate new array
game.create_door_array

# Conestant chooses door


# p game.set_selected_door

p game.open_initial_door
# p game.contestant_choices

p game.contestant_choices

# p game.doors
