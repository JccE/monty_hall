require_relative "models/door.rb"
require_relative "models/game.rb"
require_relative "models/contestant.rb"

n = 10000
@stay = 0
@switch = 0


n.times do
  game = Game.new
  contestant = Contestant.new

  g = contestant.guess
  game.set_winning_door
  game.determine_switch(g)
  game.switch == 0 ? @stay += 1 : @switch += 1

end

p "Average amount if stay: %.2f%%" % (100.0 * @stay/n)
p "Average amount if switch: %.2f%%" % (100.0 * @switch/n)
