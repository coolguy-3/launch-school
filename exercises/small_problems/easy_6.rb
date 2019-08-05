#DEGREE = "\xC2\xB0"
#
#def factor(x)
#  x = x.to_i
#  if (0..9).include? x
#    x = "0" + x.to_s
#  end
#  x
#end
#
#def dms(float)
#  dm = float.to_i
#  min = (float - dm) * 60
#  sec = (min - min.to_i) * 60
#  puts "(#{dm}#{DEGREE}#{factor(min)}'#{factor(sec)}\")"
#end
#
#dms(30)
#dms(76.73)
#dms(32.6)
#dms(93.034773)
#dms(0)
#dms(360)

#VOWELS = %w(a e i o u A E I O U)
#
#def remove_vowels(array)
#  new_array = []
#  array.each do |word|
#    new_word = word.split("").map do |char|
#      unless VOWELS.include?(char)
#        char
#      end
#    end
#    new_array << new_word.join("")
#  end
#  puts new_array.to_s
#end
#
#remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
#remove_vowels(%w(green YELLOW black white))
#remove_vowels(%w(ABC AEIOU XYZ))
#
#def remove_vowels(strings)
#    strings.map { |string| string.delete('aeiouAEIOU') }
#end

#def fib(n)
#  if n == 1
#    1
#  elsif n == 2
#    1
#  else
#    fib(n-1) + fib(n-2)
#  end
#end
#
#def find_fibonacci_index_by_length(number)
#  counter = 0
#  length = 0
#  loop do
#    counter += 1
#    length = fib(counter).to_s.length
#    break if length == number
#  end
#  counter
#end
#
#find_fibonacci_index_by_length(2)
#find_fibonacci_index_by_length(5)
#find_fibonacci_index_by_length(4)
#find_fibonacci_index_by_length(00)
#find_fibonacci_index_by_length(10)
#find_fibonacci_index_by_length(10)

def reverse!(array)
  array.each do |yo|
    array.insert(0, array.delete_at(4))
  end
  puts array.to_s
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []




