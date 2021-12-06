require './lib/valera'

describe '.valera_check' do
  valera = Valera.new

  context 'check_true' do
    status = { 'mana' => 30, 'happiens' => 5, 'stamina' => 0, 'money' => 10_000 }
    it { expect(valera.check_status(status)).to eq true }
  end

  context 'check_false' do
    status = { 'mana' => 250, 'happiens' => 5, 'stamina' => 0, 'money' => 10_000 }
    it { expect(valera.check_status(status)).to eq false }
  end

  context 'check_false' do
    status = { 'mana' => 250, 'happiens' => 5, 'stamina' => 0, 'money' => 10_000 }
    it { expect(valera.check_status(status)).to eq false }
  end

  context 'check_false' do
    status = { 'mana' => 30, 'happiens' => 5, 'stamina' => 250, 'money' => 10_000 }
    it { expect(valera.check_status(status)).to eq false }
  end
end
