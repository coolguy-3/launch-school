a = nil
b = nil
operation = nil
answer = nil

loop do
  puts "enter an integer"
  a = gets.chomp
  if a == "0"
    a = a.to_i
    break
  elsif a.to_i.zero?
    puts "please enter an integer"
  else
    a = a.to_i
    break
  end
end

loop do
    puts "enter another integer"
    b = gets.chomp
    if b == "0"
        b = b.to_i
        break
        elsif b.to_i.zero?
        puts "please enter an integer"
        else
        b = b.to_i
        break
    end
end

loop do
    puts "enter one of the following: +, -, x, /"
    operation = gets.chomp
    if operation == "+"
        answer = a + b
        break
        elsif operation == "-"
        answer = a - b
        break
        elsif operation == "x"
        answer = a * b
        break
        elsif operation == "/"
        answer = a / b
        break
        else
        puts "not valid, please enter one of the following: +, -, x, /"
    end
end

puts "#{a} #{operation} #{b} = #{answer}"
    
    






