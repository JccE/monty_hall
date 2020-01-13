require_relative "door.rb"

class Game
  attr_accessor :doors, :win

  def initialize
    @doors = []
    @win = false
  end

  def create_door_array
    door_1 = Door.new
    door_2 = Door.new
    door_3 = Door.new
    @doors = [door_1,door_2,door_3]
  end

  def set_winning_door
    @doors.sample.set_as_prize
  end

  def open_initial_door
    @doors.sample.open_door
  end



end
