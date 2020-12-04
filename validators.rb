module Validators
    def self.validate_input(input)
        #concert input to integer
        num_input = input.to_i
        # if integer == 1..4 return true
        if (1..4) == num_input
            return true
        # else return false 
        else 
            return false
        end
    end
end