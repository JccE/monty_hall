class Door

  attr_accessor :prize, :opened, :selected_door

  def initialize
    @prize = false
    @opened = false
    @selected_door = false
  end

  def open_door
    @opened = true
  end

  def set_as_prize
    @prize = true
  end

  def select_initial_door
    @selected_door = true
  end

end
