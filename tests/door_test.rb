require "minitest/autorun"
require_relative './../models/door.rb'

class DoorTest < Minitest::Test
    def setup
      @door = Door.new
    end

    def test_door_exists
      assert @door
    end

    def test_set_prize_sets_to_true
      assert_equal false,@door.prize
      @door.set_as_prize
      assert_equal true,@door.prize
    end

end
