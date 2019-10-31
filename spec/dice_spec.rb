require './lib/dice'

describe Dice do
  it "makes an instance of a Dice" do
    dice = Dice.new
    expect(dice).to be_instance_of(Dice)
  end
  it "allows the user to use a dice" do
    dice = Dice.new
    expect(dice).to respond_to(:roll)
  end
  it "Dice rolling returns a number between 1 and 6" do
    dice = Dice.new
    expect(dice.roll).to be_between(1, 6).inclusive
end
end
