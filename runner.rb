require_relative "models/door.rb"
require_relative "models/game.rb"


game = Game.new
game.create_door_array
game.open_initial_door
p [game.contestant_choice].count
