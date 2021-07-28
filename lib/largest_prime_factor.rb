# Enter your procedural solution here!
def largest_prime_factor(num)

    maxPrime = -1
    
    while(num % 2 == 0)
        maxPrime = 2
        num = num / 2
    end 

    counter = 3
    while counter <= Math.sqrt(num)

       if(num % counter == 0)
            maxPrime = counter
            num = num / counter 
       end 

        counter += 2
    end 

    if (num > 4)
        maxPrime = num;
    end 

    return maxPrime

end 
