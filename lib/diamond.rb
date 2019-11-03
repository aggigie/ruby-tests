class Diamond

    def self.make_diamond(letter)
        if letter == 'A'
          return "A\n"
        end
    
        ordered = ('A'..letter).to_a 
        dimension = (ordered.length * 2) - 1
        result = Array.new(dimension) { Array.new(dimension, ' ') }
     
        i = 0
        # Only iterate half of the matrix
        while i <= dimension / 2
          first_row = result[i]
          last_row = result[dimension - 1 - i]
    
          first_row[dimension / 2 - i] = ordered[i]
          first_row[dimension / 2 + i] = ordered[i]
    
          last_row[dimension / 2 - i] = ordered[i]
          last_row[dimension / 2 + i] = ordered[i]
    
          result[i] = result[i].join('')
          if result[dimension - 1 - i].kind_of? Array
            result[dimension - 1 - i] = result[dimension - 1 - i].join('')
          end
          
          i += 1
        end
    
        result.join("\n") << "\n"
      end
    
end

