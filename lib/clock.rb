class Clock
    attr_accessor :hour, :minute
    
    def initialize(hour:0, minute:0)
        @hour = hour < 24 ? hour : hour % 24
        @hour = ((minute < 60 && minute > 0) ? @hour : @hour + minute / 60) % 24
        @minute = (minute < 60 && minute > 0) ? minute : minute % 60 
    end

    def +(other)
        Clock.new(hour:@hour + other.hour, minute:@minute + other.minute)
    end

    def -(other)
        Clock.new(hour:@hour - other.hour, minute:@minute - other.minute)
    end

    def ==(other)
        return @hour == other.hour && @minute == other.minute
    end

    def format(number)
        number = number.to_s
        return  number.length > 1 ? "#{number}" : "0#{number}"
    end

    def to_s
        return "#{format(@hour)}:#{format(@minute)}"
    end
end