require_relative 'spec_helper'

describe Game do
  before(:each) do
    @fifa = Game.new('2011-04-02', 'yes', '2019-03-05')
    @nba = Game.new('2020-11-02', 'no', '2022-07-20')
  end

  context 'testing the game class' do
    it 'Should an instance of Game class' do
      expect(@fifa).to be_an_instance_of Game
    end

    it 'Should can_be_archieved equal to true' do
      expect(@fifa.can_be_archived?).to eq(true)
    end

    it 'Should can_be_archieved equal to false' do
      expect(@nba.can_be_archived?).to eq(false)
    end
  end
end
