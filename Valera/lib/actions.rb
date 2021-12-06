require_relative 'valera'

class Actions
  def self.go_work(status)
    status['money'] += 1250
    status['stamina'] += 30
    status['mana'] -= 15
    status['happiens'] -= 5
    status
  end

  def self.rest(status)
    status['happiens'] += 1
    status['stamina'] -= 30
    status['mana'] -= 5
    status
  end

  def self.drink_with_marginals(status)
    status['mana'] += 25
    status['happiens'] += 3
    status['money'] -= 1500
    status
  end

  def self.sing(status)
    status['money'] += 50 if status['mana'] >= 30
    status['happiens'] += 1
    status['mana'] -= 15
    status
  end

  def self.watch_series(status)
    status['happiens'] += 2
    status['stamina'] -= 15
    status['mana'] -= 5
    status
  end

  def self.sleep(status)
    status['happiens'] += 1
    status['stamina'] -= 75
    status['mana'] -= 30
    status
  end

  def self.new_game(status)
    status['money'] = 0
    status['stamina'] = 0
    status['mana'] = 0
    status['happiens'] = 0
    status
  end
end
