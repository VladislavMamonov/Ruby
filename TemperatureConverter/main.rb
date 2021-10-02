require_relative 'temp_check'
require_relative 'temp_converter'

loop do
  print 'Enter temperature value: '
  temperature = $stdin.gets.chomp

  print 'Enter the scale of dimension (C, K, F): '
  scale = $stdin.gets.chomp

  print 'Enter the target scale of dimension (C, K, F): '
  target_scale = $stdin.gets.chomp

  temp_check = TempCheck.new(temperature, scale, target_scale)
  abort 'Temperature must be a number' if temp_check.number?(temperature) == false
  abort 'Scale must be C, F or K' if temp_check.check_scale?(scale) == false
  abort 'Target scale must be C, F or K' if temp_check.check_scale?(target_scale) == false

  temp = TempConversion.new(temperature, scale, target_scale)

  case scale
  when 'C', 'c'
    temp.converse_c
  when 'K', 'k'
    temp.converse_k
  when 'F', 'f'
    temp.converse_f
  end

  print 'Сonversion result: ', temp.target_temp, "\n\n\n"
end
