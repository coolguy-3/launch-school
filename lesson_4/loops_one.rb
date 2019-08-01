counter = 0

loop do
    puts 'Just keep printing...'
    counter += 1
    break if counter == 10
end

loop do
    puts 'This is the outer loop.'
    
    loop do
        puts 'This is the inner loop.'
        break
    end
    break
end

puts 'This is outside all loops.'

iterations = 1

loop do
    puts "Number of iterations = #{iterations}"
    iterations += 1
    break if iterations == 11
end

for i in (1..100)
puts 'hi'
end