require_relative "door.rb"

class Game
  attr_accessor :doors, :win, :choices

  def initialize
    @doors = []
    @win = false
    @choices = []
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

  def open_initial_door
    arr = @doors.select {|d| !d.prize && !d.selected_door }
    arr.sample.open_door
  end

  def contestant_choices
    @choices = @doors.select {|d| d.opened == false}
  end

  # def contestant_choice
  #   stay = contestant_choices.sample
  # end

end
