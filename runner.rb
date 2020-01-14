require_relative "models/door.rb"
require_relative "models/game.rb"
require_relative "models/contestant.rb"

RESULTS = {
  :id => nil,
  :win => false,
  :switched => false,
}

def initialize_game
  # Contestant spins up game
  game = Game.new
  @contestant = Contestant.new(game)

  # Contestant chooses door, returns door_choice arr
  @contestant.pick_door

  # Game opens falsey door that is not contestant's door or prize door, returns door
  game.open_falsey_door

  # Randomize contestant's switches
  game.switch_engine

  if game.determine_win
    RESULTS[:win] = true
  end

  if game.switched
    RESULTS[:switched] = true
  end
end

initialize_game
p RESULTS


