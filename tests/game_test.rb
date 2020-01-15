require "minitest/autorun"
require_relative './../models/game.rb'

class GameTest < Minitest::Test

    def setup
      @game = Game.new
      @doors = @game.create_door_array
      @contestant = Contestant.new
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

    def test_winning_door
      @game.set_winning_door
      assert @doors.any? {|d| d.prize}
    end

    def test_determine_switch_selects_a_door
      g = @contestant.guess
      assert @doors[g]
    end

end


