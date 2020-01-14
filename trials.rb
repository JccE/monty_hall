require_relative "runner.rb"

TEN_THOUSAND = 10000
FIVE_THOUSAND = 5000

class Trials

  def initialize
    @win_after_switch = 0
    @win_without_switch = 0
  end

  def increment_win_after_switch_count
    if RESULTS[:win] && RESULTS[:switched]
      @win_after_switch += 1
    end
    @win_after_switch
  end

  def increment_win_without_switch_count
    if RESULTS[:win] && !RESULTS[:switched]
      @win_without_switch += 1
    end
    @win_without_switch
  end

end


FIVE_THOUSAND.times do
  @trial = Trials.new
  initialize_game
  @trial.increment_win_after_switch_count
  @trial.increment_win_without_switch_count
 end
p @trial
#  p @win_after_switch
#  p trial.count
# p RESULTS



# p win_after_switch
# p win_without_switch
