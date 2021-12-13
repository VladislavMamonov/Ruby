require_relative 'view'
require_relative 'input'
require_relative 'converter'

class Terminal
  def self.run
    input = Input.new
    view = View.new
    conv = Converter.new
    loop do
      view.enter_value_text
      value = input.inp_temperature
      view.from_scale_text
      scale = input.inp_from_scale
      view.to_scale_text
      new_scale = input.inp_to_scale
      result = conv.convert(value, scale, new_scale)
      puts "#{value}#{scale} = #{result}#{new_scale}"
      view.quit_program
      break if input.quit_program == 'q'
    end
  end
end
