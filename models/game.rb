require_relative "door.rb"

class Game
  attr_accessor :doors, :win

  def initialize
    @doors = []
    @win = false
    self.create_door_array
  end

  def create_door_array
    door_1 = Door.new
    door_2 = Door.new
    door_3 = Door.new
    @doors = [door_1,door_2,door_3]
    set_winning_door
  end

  def set_winning_door
    @doors.sample.set_as_prize
  end

  def set_selected_door
    @doors.sample.select_initial_door
  end

  def open_falsey_door
    @doors.select do |d|
      if !d.prize && !d.contestant_door
        d.open_door
      end
    end
  end

  # returns array of remaining doors
  def remaining_doors
    @doors.select {|d| d.opened == false}
  end

  def switch_doors
    remaining_doors.each {|door| (door.contestant_door == true )? (door.contestant_door == false) : (door.contestant_door == true)}
  end

  def determine_win
    @doors.select {|d| d.opened}
  end


end
