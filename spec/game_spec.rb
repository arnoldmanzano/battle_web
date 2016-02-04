require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:player_1) {double(:player_1)}

  describe '#attack' do
    it 'calls reduce_hitpoints on player' do
      expect(player_1).to receive(:reduce_hitpoints)
      game.attack(player_1)
    end
  end
end
