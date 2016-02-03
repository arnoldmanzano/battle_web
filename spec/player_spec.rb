require 'player'

describe Player do

  subject(:player) {described_class.new('rufus')}

  describe '#name' do
    it 'returns the given name' do
      expect(player.name).to eq 'rufus'
    end
  end
end
