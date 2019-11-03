class BeerSong
    def self.recite(a, b)
        output = ""
        for i in 0..b-1 do
            if(i > 0)
                output += "\n"
            end
            output += "#{prepare_first_statement(a-i)}\n#{prepare_second_statement(a-i)}\n"    
        end
        return output
    end

    def self.prepare_first_statement(a)
        if a==0
            "No more bottles of beer on the wall, no more bottles of beer."
        elsif a==1
            "1 bottle of beer on the wall, 1 bottle of beer."
        else
            "#{a} bottles of beer on the wall, #{a} bottles of beer."
        end
    end
    def self.prepare_second_statement(a)
        diff = a - 1
        if diff == -1
            "Go to the store and buy some more, 99 bottles of beer on the wall."
        elsif diff == 0
            "Take it down and pass it around, no more bottles of beer on the wall."
        elsif diff == 1
            "Take one down and pass it around, 1 bottle of beer on the wall." 
        else
            "Take one down and pass it around, #{diff} bottles of beer on the wall." 
        end
    end
end