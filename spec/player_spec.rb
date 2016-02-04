require 'player'

describe Player do

  subject(:jonny) {described_class.new('jonny')}

  describe '#name' do
    it 'returns the name' do
      expect(jonny.name).to eq 'jonny'
    end
  end
end
