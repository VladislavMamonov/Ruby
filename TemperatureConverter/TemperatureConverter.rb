class TempCheck
    attr_reader :temperature, :scale, :targetScale

    def initialize(temp, scale, tScale)
        abort "Temperature must be a number" if number?(temp) == false
        abort "Scale must be C, F or K" if check_scale?(scale) == false
        abort "Target scale must be C, F or K" if check_scale?(tScale) == false

        temp = temp.to_f

        @temperature = temp
        @scale = scale
    end

    def number?(temp)
        return false unless temp[/^-?[1-9][0-9]*\.?[0-9]*$/]

        return true
    end

    def check_scale?(scale)
        return false unless scale[/^[CcFfKk]$/]

        return true
    end
end



class TempConversion
    attr_reader :targetScale, :temperature, :scale
    attr_accessor :targetTemp

    def initialize(temperature, scale, targetScale)
        temperature = temperature.to_f
        targetTemp = targetTemp.to_f

        @temperature = temperature
        @targetTemp = targetTemp
        @targetScale = targetScale
        @scale = scale
    end

    def converse_C
        if targetScale[/^[Kk]$/]
            @targetTemp = @temperature + 273.15
        end

        if targetScale[/^[Ff]$/]
            @targetTemp = 9 * @temperature / 5 + 32
        end
    end

    def converse_K
        if targetScale[/^[Cc]$/]
            @targetTemp = @temperature - 273.15
        end

        if targetScale[/^[Ff]$/]
            @targetTemp = 9 * (@temperature - 273.15) / 5 + 32
        end
    end

    def converse_F
        if targetScale[/^[Cc]$/]
            @targetTemp = @temperature = 5 * (@temperature - 32) / 9
        end

        if targetScale[/^[Kk]$/]
            @temperature = 5 * (@temperature - 32) / 9 + 273.15
        end
    end
end
