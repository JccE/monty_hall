class Door
  attr_accessor :prize

  def initialize
    @prize = false
  end

  def set_as_prize
    @prize = true
  end

end
