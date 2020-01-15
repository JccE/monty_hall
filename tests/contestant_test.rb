require "minitest/autorun"
require_relative './../models/contestant.rb'

class ContestantTest < Minitest::Test

    def setup
      @contestant = Contestant.new
    end

    def test_contestant_exists
      assert @contestant
    end

end
