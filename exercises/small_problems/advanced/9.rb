#defining a method that takes a rational number as an argument
#intitialize a counter
#initialize a sum
#initialize an empty output
#add to the sum a fraction with the counter as the denominator
#conditional statement if the sum is greater than the argument add 1 to teh counter
# if the sum is equal or less than the argument add denomitator to the array
#return the array

def egyptian(number)
    counter = 1
    output_array = []
    sum = 0
    
    loop do
        if (sum + (1/counter.to_f)) < number
            sum += (1/counter.to_f)
            output_array << counter
            counter += 1
            elsif (sum + (1/counter.to_f)) > number
            counter += 1
            else
            output_array << counter
            break
        end
    end
    output_array.to_s
end

puts egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
puts egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
puts egyptian(Rational(3, 1))

