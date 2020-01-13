require_relative "models/door.rb"
require_relative "models/game.rb"


game = Game.new

# p game

game.create_door_array

# p game

game.open_initial_door

p game
