class Queens
    def initialize(queens)
      raise ArgumentError if queens.values.flatten.any? {|v| v < 0 || v > 7}
      @white = queens[:white]
      @black = queens[:black]
    end
  
    def attack?
      vertical_coincidence? || horizontal_coincidence? || diagonal_coincidence?
    end
  
    private
  
    def horizontal_coincidence?
      @white[1] == @black[1]
    end
  
    def vertical_coincidence?
       @white[0] == @black[0]
    end
  
    def diagonal_coincidence?
      (@white[0] - @black[0]).abs == (@white[1] - @black[1]).abs
    end
  end