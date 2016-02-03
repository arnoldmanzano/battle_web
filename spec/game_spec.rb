require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:player) {double(:player, reduce_points: nil)}

  describe '#attack' do
    it 'causes player passed in to reduce points' do
      expect(player).to receive(:reduce_points)
      game.attack(player)
    end
  end
end
