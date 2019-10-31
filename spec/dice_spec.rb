require './lib/dice'

describe Dice do
  It ‘makes an instance of a dice’ do
    dice = Dice.new
    expect(dice).to be_instance_of(Dice)
    end
  end
