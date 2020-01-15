class Contestant
  attr_accessor :guess

  def initialize
    @guess = rand(3)
  end

end
