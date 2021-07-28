# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_accessor :input
    def initialize(input)
        @input = input
    end 

    def number

        maxPrime = -1

        while @input % 2 == 0
            maxPrime = 2
            @input = @input / 2
        end 

        counter = 3

        while counter <= Math.sqrt(@input)
            if @input % counter == 0
                maxPrime = counter
                @input = @input / counter 
            end
            counter += 2
        end 

        if @input > 4
            maxPrime = @input
        end 

        return maxPrime
    end 

    
end 