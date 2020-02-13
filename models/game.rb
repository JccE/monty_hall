require_relative "door.rb"

class Game
  attr_accessor :doors, :stay, :switch

  def initialize
    @doors = []
    @stay = 0
    @switch = 0
    self.create_door_array
  end

  def create_door_array
    @doors = [Door.new,Door.new,Door.new]

  end

  def set_winning_door
    @doors.sample.set_as_prize
  end

  def determine_switch guess
    if @doors[guess] && @doors[guess].prize
      @stay += 1
    else
      @switch += 1
    end
  end

end
