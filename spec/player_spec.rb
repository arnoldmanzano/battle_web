require 'player'

describe Player do

  subject(:player) {described_class.new('rufus')}

  describe '#name' do
    it 'returns the given name' do
      expect(player.name).to eq 'rufus'
    end
  end

  describe '#points' do
    it 'returns the hit points of the player' do
      expect(player.points).to eq 60
    end
  end

<<<<<<< HEAD
  describe '#reduce_points' do
    it 'reduces the points by 10' do
      player.reduce_points
      expect{ player.reduce_points }.to change{ player.points }.by(-10)
=======
  describe '#attack' do
    it 'causes attacked player to reduce points' do
      player2 = described_class.new('mittens')
      expect(player2).to receive(:reduce_points)
      player.attack(player2)
    end
end

  describe '#reduce_points' do
    it 'reduces the points by 10' do
      player.reduce_points
      expect{ player.reduce_points }.to change{player.points}.by(-10)
>>>>>>> 89e8a432784f13123a5c5aa2f3e043d952752688
    end
  end
end
