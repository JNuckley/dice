class Dice
  def initialize
  @end_result = []
end
def roll
  rand(1..6)
end
  def no_of_dice(num)
    num.times {
      @end_result << roll
    }
  end
  def final_result
    @end_result
  end
end
