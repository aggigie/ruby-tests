class SpaceAge

    attr_accessor :earth_years 
    def initialize(seconds)
        @earth_years = seconds/60**2/24/365.25
    end

    def on_earth
        return @earth_years
    end

    def on_mars
        return @earth_years / 1.8808158
    end

    def on_venus
        return @earth_years / 0.61519726
    end

    def on_mercury
        return @earth_years / 0.2408467
    end

    def on_neptune
        return @earth_years / 164.79132
    end

    def on_uranus
        return @earth_years / 84.016846
    end

    def on_jupiter
        return @earth_years / 11.862615
    end

    def on_saturn
        return @earth_years / 29.447498   
    end

end
