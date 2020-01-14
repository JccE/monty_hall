require_relative "models/door.rb"
require_relative "models/game.rb"
require_relative "models/contestant.rb"

TIMES_TO_RUN = 10000

class GameEngine
  attr_accessor :count, :switched_count

  RESULTS = {
    :id => nil,
    :win => false,
    :switched => false,
    :count => @count,
    :switched_count => @switched_count
  }

  def initialize
    @count = 0
    @switched_count = 0
  end

  def initialize_game
    game = Game.new
    @contestant = Contestant.new(game)

    # Contestant chooses door, returns door_choice arr
    @contestant.pick_door

    # Game opens falsey door that is not contestant's door or prize door, returns door
    game.open_falsey_door

    # Randomize contestant's switches
    game.switch_engine

    if game.determine_win
      GameEngine::RESULTS[:win] = true
      @count +=  1
      GameEngine::RESULTS[:count] = @count
    end

    if game.switched
      GameEngine::RESULTS[:switched] = true
      @switched_count +=  1
      GameEngine::RESULTS[:switched_count] = @switched_count
    end

  end

  def result
    w = GameEngine::RESULTS[:count]
    s = GameEngine::RESULTS[:switched_count]

    switch_answer = (s.to_f / TIMES_TO_RUN)
    non_switch_answer = (w.to_f / TIMES_TO_RUN)

    p "Out of #{TIMES_TO_RUN} times through game,"
    p "by switching you have a #{switch_answer.round(3)}% chance of winning"
    p "if you stay, you have a #{non_switch_answer.round(3)}% chance of winning!"
  end

end

game = GameEngine.new
TIMES_TO_RUN.times do
  game.initialize_game
end

game.result

