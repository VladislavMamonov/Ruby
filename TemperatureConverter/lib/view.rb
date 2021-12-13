class View
  def welcome_text
    puts "Temperature converter\n"
  end

  def enter_value_text
    puts "Please, enter temperature value: \n"
  end

  def from_scale_text
    puts "Enter from [C/F/K]: \n"
  end

  def to_scale_text
    puts "Enter to [C/F/K]: \n"
  end

  def quit_program
    puts "Press \"q\" to exit the program or something else to continue\n"
  end
end
