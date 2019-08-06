#def sum_of_sums(array)
#  sum = 0
#  new = []
#  array.each do |num|
#    sum = sum + num
#    new << sum
#  end
#  puts new.reduce (:+)
#end
#
#sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
#sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
#sum_of_sums([4]) == 4
#sum_of_sums([1, 2, 3, 4, 5]) == 35


#print "Enter a noun: "
#noun = gets.chomp
#print "Enter a verb: "
#verb = gets.chomp
#print "Enter an adjective: "
#adjective = gets.chomp
#print "Enter an adverb: "
#adverb = gets.chomp
#
#puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"


#def palindromes(string)
#  all = []
#  palins = []
#  string.size.times do
#    acc = ''
#   string.split("").each do |character|
#     all << (acc += character.to_s)
#   end
# string[0] = ''
# end
# all.select do |sub|
#   unless sub.size == 1
#     if sub == sub.reverse
#       palins << sub
#     end
#   end
# end
# puts palins.to_s
#end
#
#palindromes('abcd')
#palindromes('madam')
#palindromes('hello-madam-did-madam-goodbye')

#def fizzbuzz(x, y)
#  for num in (x..y)
#    if num % 3 == 0 && num % 5 == 0
#      print 'fizzbuzz'
#    elsif num % 3 == 0
#      print 'fizz, '
#    elsif num % 5 == 0
#      print 'buzz, '
#    else
#      print "#{num}, "
#    end
#  end
#end
#
#fizzbuzz(1, 15)

#def repeater(string)
#  new = []
#  string.split("").each do |char|
#    new << char * 2
#  end
#  puts new.join
#end
#
#repeater('Hello') == "HHeelllloo"
#repeater("Good job!") == "GGoooodd  jjoobb!!"
#repeater('') == ''

#CONSONANTS = %w( b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z )
#
#def double_consonants(string)
#  new = ''
#  string.split("").each do |char|
#    if CONSONANTS.include? char
#      new << char << char
#    else
#      new << char
#    end
#  end
#  puts new
#end
#
#double_consonants('String') == "SSttrrinngg"
#double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
#double_consonants("July 4th") == "JJullyy 4tthh"
#double_consonants('') == ""

#def reversed_number(x)
#  array = []
#  numbers = x.to_s.split("")
#  numbers.size.times do
#    array << numbers.pop
#  end
#  puts array.join.to_i
#end
#
#reversed_number(12345) == 54321
#reversed_number(12213) == 31221
#reversed_number(456) == 654
#reversed_number(12000) == 21
#reversed_number(12003) == 30021
#reversed_number(1) == 1

#def center_of(string)
#  center = ''
#  if string.length.odd?
#    center += string[string.length/2]
# else
#    center += string[string.length/2 - 1]
#    center += string[string.length/2]
#  end
#  puts center
#end
#
#center_of('I love ruby') == 'e'
#center_of('Launch School') == ' '
#center_of('Launch') == 'un'
#center_of('Launchschool') == 'hs'
#center_of('x') == 'x'





