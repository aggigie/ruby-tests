class SecretHandshake
  
    SECRETS = ["wink", "double blink", "close your eyes", "jump"]
    attr_reader :number
  
    def initialize(number)
      @number = number
    end
  
    def commands
      binary = number.to_i.to_s(2).reverse
  
      commands = SECRETS.length.times
        .select { |index| binary[index] == "1" }
        .map { |index| SECRETS[index] }
  
      commands.reverse! if binary[SECRETS.length] == "1"
  
      commands
    end
  end