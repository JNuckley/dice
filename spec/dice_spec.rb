require './lib/dice'

describe Dice do
  it "makes an instance of a Dice" do
    dice = Dice.new
    expect(dice).to be_instance_of(Dice)
    end
  end
