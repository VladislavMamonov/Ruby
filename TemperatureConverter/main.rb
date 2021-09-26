require_relative 'TemperatureConverter'

loop do
    print "Enter temperature value: "
    temperature = STDIN.gets.chomp

    print "Enter the scale of dimension (C, K, F): "
    scale = STDIN.gets.chomp

    print "Enter the target scale of dimension (C, K, F): "
    targetScale = STDIN.gets.chomp

    inputCheck = TempCheck.new(temperature, scale, targetScale)
    temp = TempConversion.new(temperature, scale, targetScale)

    case scale
    when "C" || "c"
        temp.converse_C
    when "K" || "k"
        temp.converse_K
    when "F" || "f"
        temp.converse_F
    end

    temp.targetTemp = temp.targetTemp.round(2)
    print "Сonversion result: ", temp.targetTemp, "\n\n\n"
end
