class Allergies

    ALLERGIES = {    
        'eggs'         => 1,
        'peanuts'      => 2,
        'shellfish'    => 4,
        'strawberries' => 8,
        'tomatoes'     => 16,
        'chocolate'    => 32,
        'pollen'       => 64,
        'cats'         => 128
    }
    
    attr_reader :list
   
    def initialize(allergy_code)
        @allergy_code = allergy_code
        @list = ALLERGIES.keys.select{ |key| allergic_to?(key) }
    end
    
    def allergic_to?(substance)
        @allergy_code & ALLERGIES[substance] != 0
    end    
end