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
      @reader.read_action(@game)
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
