require_relative 'view'

class Input
  def inp_temperature
    temperature = $stdin.gets.chomp
    while check_temperature(temperature) == false
      puts 'temperature must be a number'
      temperature = $stdin.gets.chomp
    end
    temperature
  end

  def inp_from_scale
    from_scale = $stdin.gets.chomp
    while check_in_degree_type(from_scale) == false
      puts 'incorrect scale'
      from_scale = $stdin.gets.chomp
    end
    from_scale
  end

  def inp_to_scale
    to_scale = $stdin.gets.chomp.upcase
    while check_out_degree_type(to_scale) == false
      puts 'incorrect scale'
      to_scale = $stdin.gets.chomp.upcase
    end
    to_scale
  end

  def quit_program
    @quit = gets.chomp
  end

  def check_temperature(value)
    return false unless value[/^?[0-9]+$/]

    true
  end

  def check_in_degree_type(scale)
    %w[F K C].include? scale
  end

  def check_out_degree_type(scale)
    %w[F K C].include?(scale)
  end
end
