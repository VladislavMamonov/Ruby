require_relative 'valera'

class Interface
  def print_actions
    puts '(1) - Пойти на работу'
    puts '(2) - Отдыхать'
    puts '(3) - Выпить с маргинальными личностями'
    puts '(4) - Спеть'
    puts '(5) - Посмотреть сериал'
    puts '(6) - Спать'
    puts '(7) - Сохранить игру'
    puts '(8) - Загрузить игру'
    puts '(9) - Новая игра'
    puts '(10) - Выйти'
  end

  def print_status(valera)
    print "Мана: #{valera.status['mana']}\n"
    print "Довольство: #{valera.status['happiens']}\n"
    print "Усталость: #{valera.status['stamina']}\n"
    print "Деньги: #{valera.status['money']}\n\n"
  end
end
