class TempCheck
  attr_reader :temperature, :scale, :target_scale

  def initialize(temp, scale, target_scale)
    temp = temp.to_f

    @temperature = temp
    @scale = scale
    @target_scale = target_scale
  end

  def number?(temp)
    return false unless temp[/^?[0-9]+$/]

    true
  end

  def check_scale?(scale)
    return false unless scale[/^[CcFfKk]$/]

    true
  end
end
