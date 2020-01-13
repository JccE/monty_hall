require "minitest/autorun"

require_relative './../models/door.rb'

class DoorTest < Minitest::Test
    def setup
      @door = Door.new
    end

    def test_door_exists
      assert @door
    end

    def test_door_states
      assert !@door.winning_state
      assert !@door.opened
    end
end
