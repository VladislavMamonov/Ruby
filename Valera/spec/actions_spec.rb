require './actions'

describe '.actions_work_rest_series_drink' do
  status = { 'mana' => 30, 'happiens' => 5, 'stamina' => 30, 'money' => 10_000 }

  context 'go_work' do
    expected = { 'mana' => 15, 'happiens' => 0, 'stamina' => 60, 'money' => 11_250 }
    it { expect(Actions.go_work(status.clone)).to eq expected }
  end

  context 'rest' do
    expected = { 'mana' => 25, 'happiens' => 6, 'stamina' => 0, 'money' => 10_000 }
    it { expect(Actions.rest(status.clone)).to eq expected }
  end

  context 'watch_series' do
    expected = { 'mana' => 25, 'happiens' => 7, 'stamina' => 15, 'money' => 10_000 }
    it { expect(Actions.watch_series(status.clone)).to eq expected }
  end

  context 'drink_with_marginals' do
    expected = { 'mana' => 55, 'happiens' => 8, 'stamina' => 30, 'money' => 8500 }
    it { expect(Actions.drink_with_marginals(status.clone)).to eq expected }
  end
end

describe '.actions_sing_sleep_ng' do
  status = { 'mana' => 30, 'happiens' => 5, 'stamina' => 30, 'money' => 10_000 }

  context 'sing' do
    expected = { 'mana' => 15, 'happiens' => 6, 'stamina' => 30, 'money' => 10_050 }
    it { expect(Actions.sing(status.clone)).to eq expected }
  end

  context 'sleep' do
    expected = { 'mana' => 0, 'happiens' => 6, 'stamina' => -45, 'money' => 10_000 }
    it { expect(Actions.sleep(status.clone)).to eq expected }
  end

  context 'new_game' do
    expected = { 'mana' => 0, 'happiens' => 0, 'stamina' => 0, 'money' => 0 }
    it { expect(Actions.new_game(status.clone)).to eq expected }
  end
end
