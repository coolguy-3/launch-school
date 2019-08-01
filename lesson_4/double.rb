def double_numbers!(numbers, value)
    counter = 0
    
    loop do
        break if counter == numbers.size
        
        current_number = numbers[counter]
        numbers[counter] = current_number * value
        
        counter += 1
    end
    
    numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers!(my_numbers, 3)

puts my_numbers


