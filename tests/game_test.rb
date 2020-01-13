require "minitest/autorun"
require_relative './../models/game.rb'

class GameTest < Minitest::Test

    def setup
      @game = Game.new
      @doors = @game.create_door_array
    end

    def test_game_exists
      assert @game
    end

    def test_doors_is_array
      assert_kind_of Array, @game.doors
    end

    def test_game_has_three_doors
      @game.create_door_array
      assert_equal 3,@game.doors.count
    end

    def test_game_has_single_initial_opened_door
      p @game.open_initial_door
      assert_equal 1, @game.doors.select {|d| d.opened == true}.count
    end

    # def test_
end


