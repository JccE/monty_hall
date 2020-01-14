class Contestant

  attr_accessor :pick_door, :play_game

  def initialize game
    @game = game
    @door_choice = []
  end

  def pick_door
    door = @game.doors.sample
    door.select_contestant_door
    @door_choice << door
  end

  def play_game
    @game
  end
end
