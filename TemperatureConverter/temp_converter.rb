class TempConversion
  attr_reader :target_scale, :temperature, :scale
  attr_accessor :target_temp

  def initialize(temperature, scale, target_scale)
    temperature = temperature.to_f
    target_temp = target_temp.to_f

    @temperature = temperature
    @target_temp = target_temp
    @target_scale = target_scale
    @scale = scale
  end

  def converse_c
    @target_temp = @temperature + 273.15 if target_scale[/^[Kk]$/]

    @target_temp = 9 * @temperature / 5 + 32 if target_scale[/^[Ff]$/]

    @target_temp = @target_temp.round(2)
  end

  def converse_k
    @target_temp = @temperature - 273.15 if target_scale[/^[Cc]$/]

    @target_temp = 9 * (@temperature - 273.15) / 5 + 32 if target_scale[/^[Ff]$/]

    @target_temp = @target_temp.round(2)
  end

  def converse_f
    @target_temp = @temperature = 5 * (@temperature - 32) / 9 if target_scale[/^[Cc]$/]

    @target_temp = 5 * (@temperature - 32) / 9 + 273.15 if target_scale[/^[Kk]$/]

    @target_temp = @target_temp.round(2)
  end
end
