class Valera
  attr_accessor :status

  def initialize(mana = 0, happiens = 0, money = 0, stamina = 0)
    @status = {
      'mana' => mana,
      'happiens' => happiens,
      'stamina' => stamina,
      'money' => money
    }
  end

  def check_status(status)
    fix_status(status)
    if check_mana(status['mana']) && check_happiens(status['happiens']) \
       && check_stamina(status['stamina']) && check_money(status['money'])
      @status = status
      return true
    end
    false
  end

  def fix_status(status)
    status['mana'] = 0 if (status['mana']).negative?
    status['happiens'] = 10 if status['happiens'] > 10
    status['stamina'] = 0 if (status['stamina']).negative?
  end

  def check_mana(mana)
    mana >= 0 && mana <= 100
  end

  def check_happiens(happiens)
    happiens <= 10
  end

  def check_stamina(stamina)
    stamina >= 0 && stamina <= 100
  end

  def check_money(money)
    money >= 0
  end
end
