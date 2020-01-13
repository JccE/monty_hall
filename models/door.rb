class Door

  attr_accessor :prize, :opened

  def initialize
    @prize = false
    @opened = false
  end

  def open_door
    @opened = true
  end

  def set_as_prize
    @prize = true
  end


end
