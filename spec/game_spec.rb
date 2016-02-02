require 'game'

describe Game do

  let(:bob) {double(:bob)}
  let(:bill) {double(:bill)}
  subject(:game) {described_class.new(bob, bill)}


  describe '#initialize' do

    it 'initializes with player one' do
      expect(game.player_one).to eq bob
    end

    it 'initializes with player two' do
      expect(game.player_two).to eq bill
    end

  end

  describe '#attack' do

    it 'causes to bill to receive damage' do
      expect(bill).to receive(:receive_damage)
      game.attack(bob, bill)
    end

  end



end
