require './lib/game'

describe '.check_action' do
  context 'false' do
    game = Game.new
    status = { 'mana' => 10, 'happiens' => -10, 'stamina' => 25, 'money' => 2500 }
    it { expect(game.check_action(status)).to eq false }
  end
end

describe '.actions_work_rest_drink' do
  context 'do_action_work' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => -5, 'stamina' => 30, 'money' => 1250 }
    game.action_item = 1
    it { expect(game.do_action.status).to eq expected_status }
  end

  context 'do_action_rest' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => 1, 'stamina' => 0, 'money' => 0 }
    game.action_item = 2
    it { expect(game.do_action.status).to eq expected_status }
  end

  context 'do_action_drink' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => 0, 'stamina' => 0, 'money' => 0 }
    game.action_item = 3
    it { expect(game.do_action.status).to eq expected_status }
  end
end

describe '.actions_sing_series_sleep' do
  context 'do_action_sing' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => 1, 'stamina' => 0, 'money' => 0 }
    game.action_item = 4
    it { expect(game.do_action.status).to eq expected_status }
  end

  context 'do_action_watch_series' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => 2, 'stamina' => 0, 'money' => 0 }
    game.action_item = 5
    it { expect(game.do_action.status).to eq expected_status }
  end

  context 'do_action_sleep' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => 1, 'stamina' => 0, 'money' => 0 }
    game.action_item = 6
    it { expect(game.do_action.status).to eq expected_status }
  end
end

describe '.actions_save_load' do
  context 'do_action_save_game' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => 0, 'stamina' => 0, 'money' => 0 }
    it {
      game.action_item = 7
      allow($stdin).to receive(:gets).and_return('test_save')
      expect(game.do_action.status).to eq expected_status
    }
  end

  context 'do_action_load_game' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => 0, 'stamina' => 0, 'money' => 0 }
    it {
      game.action_item = 8
      allow($stdin).to receive(:gets).and_return('test_save')
      expect(game.do_action.status).to eq expected_status
    }
  end
end

describe '.actions_new_game' do
  context 'do_action_new_game' do
    game = Game.new
    expected_status = { 'mana' => 0, 'happiens' => 0, 'stamina' => 0, 'money' => 0 }
    game.action_item = 9
    it { expect(game.do_action.status).to eq expected_status }
  end
end
