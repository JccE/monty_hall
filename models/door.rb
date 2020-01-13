class Door
  attr_accessor :winning_state, :opened

  def initialize
    @winning_state = false
    @opened = false
  end

  def open_door
    @opened = true
  end


end
