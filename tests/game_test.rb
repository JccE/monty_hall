require "minitest/autorun"
require_relative './../models/game.rb'

class GameTest < Minitest::Test


    def setup
      @game = Game.new
    end

    def test_game_exists
      assert @game
    end

    def test_doors_is_array
      assert_kind_of Array, @game.doors
    end

    def test_game_has_three_doors
      assert_equal @game.doors.count, 3
    end

end


