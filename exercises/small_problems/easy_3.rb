#num_array = []
#for number in (1..5)
#  print "==> Enter number #{number}: "
#  num_array << gets.chomp.to_i
#end
#
#print "==> Enter final number: "
#final_number = gets.chomp.to_i
#
#if num_array.include? final_number
#  puts "The number #{final_number} appears in #{num_array}."
#else
#puts "The number #{final_number} does not appear in #{num_array}."
#end)

#print "Enter the first number: "
#a = gets.chomp.to_i
#print "Enter the second number: "
#b = gets.chomp.to_i

#puts "#{a} + #{b} = #{a + b}"
#puts "#{a} - #{b} = #{a - b}"
#puts "#{a} * #{b} = #{a * b}"
#puts "#{a} / #{b} = #{a / b}"
#puts "#{a} % #{b} = #{a % b}"
#puts "#{a} ** #{b} = #{a ** b}"

#print "Please write word or multiple words: "
#input = gets.chomp
#puts "There are #{input.split(" ").join("").size} characters in #{input}."

#def multiply(x, y)
#  x * y
#end
#
#def square(x)
#  multiply(x, x)
#end

#def xor?(x, y)
#  if x && y
#    false
#  elsif x == false && y == false
#    false
#  else
#    true
#  end
#end

#puts xor?(5.even?, 4.even?)
#puts xor?(5.odd?, 4.odd?)
#puts xor?(5.odd?, 4.even?)
#puts xor?(5.even?, 4.odd?)


#def oddities(array)
#  array_new = []
#  counter = 0
#  array.each do |obj|
#    if counter.odd? == false
#      array_new << obj
#   end
#    counter += 1
#  end
#  puts array_new
#end

#oddities([2, 3, 4, 5, 6])
#oddities(['abc', 'def'])
#oddities([123])
#oddities([])

#def palindrome?(string)
#    string == string.reverse
#end
#
#def real_palindrome?(string)
#    string = string.downcase.delete('^a-z0-9')
#    palindrome?(string)
#end
#
#puts real_palindrome?('madam')
#puts real_palindrome?('Madam')
#puts real_palindrome?("Madam, I'm Adam")
#puts real_palindrome?('356653')
#puts real_palindrome?('3956a6593')
#puts real_palindrome?('123ab321')

#def palindromic_number?(num)
#  num.to_s == num.to_s.reverse
#end
#
#puts palindromic_number?(34543)
#puts palindromic_number?(123210)
#puts palindromic_number?(22)
#puts palindromic_number?(5)




























