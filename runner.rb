require_relative "models/door.rb"
require_relative "models/game.rb"


game = Game.new

door = Door.new

p game.open_initial_door
