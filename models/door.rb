class Door

  attr_accessor :prize, :opened, :contestant_door

  def initialize
    @prize = false
    @opened = false
    @contestant_door = false
  end

  def open_door
    @opened = true
  end

  def set_as_prize
    @prize = true
  end

  def select_contestant_door
    @contestant_door = true
  end



end
