require './reader'

describe '.reader_false' do
  context 'read_action_true_1' do
    it {
      game = Game.new
      reader = Reader.new
      allow($stdin).to receive(:gets).and_return('1')
      expect(reader.read_action(game)).to eq true
    }
  end

  context 'read_action_false_1' do
    it {
      game = Game.new
      reader = Reader.new
      allow($stdin).to receive(:gets).and_return('*')
      expect(reader.read_action(game)).to eq false
    }
  end
end

describe '.reader_true' do
  context 'read_action_true_2' do
    it {
      game = Game.new
      reader = Reader.new
      allow($stdin).to receive(:gets).and_return('10')
      expect(reader.read_action(game)).to eq true
    }
  end

  context 'read_action_false_2' do
    it {
      game = Game.new
      reader = Reader.new
      allow($stdin).to receive(:gets).and_return('0')
      expect(reader.read_action(game)).to eq false
    }
  end
end
