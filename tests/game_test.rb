require "minitest/autorun"
require_relative './../models/game.rb'

class GameTest < Minitest::Test

    def setup
      @game = Game.new
    end

    def test_game_exists
      p "Play a #{@game.foo}"
    end

end
