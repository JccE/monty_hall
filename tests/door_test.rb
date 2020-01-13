require "minitest/autorun"

require_relative './../models/door.rb'

class DoorTest < Minitest::Test
    def setup
      @door = Door.new
    end

    def test_door_exists
      assert @door
    end

    def test_door_states_exist
      assert !@door.prize
      assert !@door.opened
    end

    def test_open_door_sets_to_true
      assert_equal false,@door.opened
      @door.open_door
      assert_equal true,@door.opened
    end

      def test_set_prize_sets_to_true
      assert_equal false,@door.prize
      @door.set_as_prize
      assert_equal true,@door.prize
    end

end
