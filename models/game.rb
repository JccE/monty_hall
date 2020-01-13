require_relative "door.rb"

class Game
  attr_accessor :doors, :win

  def initialize
    @doors = [Door.new,Door.new,Door.new]
    @win = false
  end



end
