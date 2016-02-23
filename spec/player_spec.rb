require 'player'

describe Player do

  subject(:bob) {described_class.new("Bob")}
  subject(:bill) {described_class.new("Bill")}

  describe '#initialize' do

    it 'returns the player\'s name' do
      expect(bob.name).to eq "Bob"
    end

  end

  describe '#receive_damage' do

    it 'reduces the hp' do
        expect { bill.receive_damage }.to change { bill.hp }.by(-5)
    end

  end


end
