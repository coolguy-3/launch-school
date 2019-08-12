#def greetings(array, hash)
#    puts "Hello, #{array.join(" ")}! It's nice to have a #{hash[:title]} #{hash[:occupation]} around."
#end
#
#greetings(['Joshua', 'Luke', 'Caruso'], { title: 'Master', occupation: 'Programmer' })

#def twice(number)
#  string = number.to_s
#  if string.size == 1
#    puts number * 2
#  elsif string[0..string.size/2-1] == string[string.size/2..-1]
#    puts number
#  else
#    puts number * 2
#  end
#end
#
#twice(37) == 74
#twice(44) == 44
#twice(334433) == 668866
#twice(444) == 888
#twice(107) == 214
#twice(103103) == 103103
#twice(3333) == 3333
#twice(7676) == 7676
#twice(123_456_789_123_456_789) == 123_456_789_123_456_789
#twice(5) == 10

#def negative(x)
#  if x > 0
#    x - x * 2
#  else
#    x
#  end
#end
#
#puts negative(5)
#puts negative(-3)
#puts negative(0)

#def sequence(x)
#  counter = 1
#  array = []
#  x.times do
#    array << counter
#    counter += 1
#  end
#  puts array.to_s
#end
#
#sequence(5)
#sequence(3)
#sequence(1)

#def uppercase?(string)
#  puts string == string.upcase
#end
#
#uppercase?('t') == false
#uppercase?('T') == true
#uppercase?('Four Score') == false
#uppercase?('FOUR SCORE') == true
#uppercase?('4SCORE!') == true
#uppercase?('') == true
#
#def word_lengths(string)
#  array = []
#  string.split(" ").each do |word|
#    array << "#{word} #{word.size}"
#  end
#  puts array.to_s
#end
#
#word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
#
#word_lengths("baseball hot dogs and apple pie") ==
#["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
#
#word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
#
#word_lengths("Supercalifragilisticexpialidocious") ==
#["Supercalifragilisticexpialidocious 34"]
#
#word_lengths("") == []

#def swap_name(string)
#  array = string.split(" ").map do |word|
#    word
#  end
#  puts "#{array[0]}, #{array[1]}"
#end
#
#swap_name('Joe Roberts') == 'Roberts, Joe'

#def sequence(count, number)
#  array = []
#  counter = 1
#  count.times do
#    array << number * counter
#    counter += 1
#  end
#  puts array
#end
#
#sequence(5, 1) == [1, 2, 3, 4, 5]
#sequence(4, -7) == [-7, -14, -21, -28]
#sequence(3, 0) == [0, 0, 0]
#sequence(0, 1000000) == []

#def get_grade(x, y, z)
#  sum = x + y + z
#  mean = sum / 3
#  if mean >= 90 && mean <= 100
#    score = 'A'
#  elsif mean >= 80 && mean <= 90
#    score = 'B'
#  elsif mean >= 70 && mean <= 80
#   score = 'C'
#  elsif mean >= 60 && mean <= 70
#    score = 'D'
#  else
#    score = 'F'
#  end
#  puts score
#end
#
#get_grade(95, 90, 93) == "A"
#get_grade(50, 50, 95) == "D"

#def buy_fruit(array)
#  new_array = []
#  array.each do |x|
#    x[1].times do
#   new_array << x[0]
#    end
#  end
#  puts new_array.to_s
#end
#
#buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#["apples", "apples", "apples", "orange", "bananas","bananas"]











































