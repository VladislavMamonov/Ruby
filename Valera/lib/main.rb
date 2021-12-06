require_relative 'game'
require_relative 'interface'
require_relative 'reader'

class Main
  def initialize
    @game = Game.new
    @interface = Interface.new
    @valera = Valera.new
    @reader = Reader.new
  end

  def start
    loop do
      @interface.print_status(@valera)
      @interface.print_actions

      while @reader.read_action(@game) == false
        puts('Ошибка! Такого действия нет. Введите значение в диапозоне от 1 до 10')
      end

      @valera = @game.do_action

      case @valera
      when false
        puts('Валера повесился))). Конец игры.')
        exit
      when true
        puts('Валера наконец снял квартиру и стал успешным. Победа!')
        exit
      end
    end
  end
end

main = Main.new
main.start
