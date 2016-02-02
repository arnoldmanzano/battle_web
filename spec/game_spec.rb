require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:bob) {double(:bob)}
  let(:bill) {double(:bill)}

  describe '#attack' do

    it 'causes to bill to receive damage' do
      expect(bill).to receive(:receive_damage)
      game.attack(bob, bill)
    end

  end

end
