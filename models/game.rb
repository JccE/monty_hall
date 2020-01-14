require_relative "door.rb"

class Game
  attr_accessor :doors, :win, :switched

  def initialize
    @doors = []
    @win = false
    @switched = false
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
    @doors.sample.select_contestant_door
  end

  def open_falsey_door
    @doors.select do |d|
      if !d.prize && !d.contestant_door
        d.open_door
      end
    end
  end

  # returns array of remaining doors after first open
  def remaining_door_array
    @doors.select {|d| d.opened == false}
  end

  def determine_win
    @doors.each do |d|
      if d.contestant_door && d.prize
        @win = true
      end
    end
    @win
  end

  def switch_engine
    r = rand(0..1)
    if r == 0
      @switched = true
      remaining_door_array.each {|d| !d.contestant_door ? d.contestant_door = true : d.contestant_door = false}
    else
      switched = false
    end
    # self
  end

end
