class Sieve
    def initialize(number)
      @initial_array = (2..number).to_a
    end
  
    def primes
      [].tap do |prime_numbers|
        until @initial_array.empty?
          prime_numbers << @initial_array[0]
          @initial_array.delete_if { |number| (number % prime_numbers[-1]).zero? }
        end
      end
    end
  end