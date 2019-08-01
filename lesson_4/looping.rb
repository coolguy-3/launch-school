array = [1, 2, 3, 4]
counter = 0

puts array

loop do
  array[counter] *= 10
  counter += 1
  break if counter == array.size
end

puts array.to_s