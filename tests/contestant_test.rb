require "minitest/autorun"
require_relative './../models/contestant.rb'

class ContestantTest < Minitest::Test


    def setup
      @game = Game.new
      @contestant = Contestant.new(@game)
    end

    def test_contestant_exists
      assert @contestant
    end

    def skip test_contestant_can_play_game
      assert_respond_to(@contestant, :play_game)
    end

    def skip test_contestant_can_pick_door

      assert_respond_to(@contestant, :pick_door)

      # door_choice is an array with door_choice[0] as first and door_choice[1] as second
      # assert @contestant.door_choice == @contestant.door_choice[0]
    end

    def skip test_contestant_can_stay_or_switch


    end

    def skip test_contestant_can_win_game

    end

    def skip test_contestant_can_lose_game

    end


    def skip test_has_array_of_game_stats

    end

end
