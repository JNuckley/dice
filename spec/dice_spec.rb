require './lib/dice'
#  tells the test where to look

#  tells the test to check that thhere is an instance of dice
describe Dice do
  it "makes an instance of a Dice" do
    dice = Dice.new
    expect(dice).to be_instance_of(Dice)
  end

#  makes sure that the dice class responds to roll
  it "allows the user to use a dice" do
    dice = Dice.new
    expect(dice).to respond_to(:roll)
  end

  #  checks that the roll method is between 1 - 6
  it "Dice rolling returns a number between 1 and 6" do
    dice = Dice.new
    expect(dice.roll).to be_between(1, 6).inclusive
  end

  #  checks that the user can use more than one die, using an example of 3 dice
  it "Multiple dice can be thrown at once" do
    dice = Dice.new
    dice.no_of_dice(3)
    expect(dice.final_result.count).to eq 3
  end

  it "displays the score of the dices rolled" do
    dice = Dice.new
    dice.no_of_dice(6)
    expect(dice).to respond_to(:final_result)
  end
end
