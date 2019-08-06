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

#def reverse!(array)
#  counter = array.size - 1
#  array.size.times do
#    array.insert(counter, array.shift)
#    counter -= 1
#  end
# array
#end
#
#list = [1,2,3,4]
#result = reverse!(list)
#result == [4, 3, 2, 1]
#list == [4, 3, 2, 1]
#puts list.object_id == result.object_id
#
#list = %w(a b e d c)
#reverse!(list) == ["c", "d", "e", "b", "a"]
#list == ["c", "d", "e", "b", "a"]

#def reverse(array)
#  new_array = []
#  array.size.times do
#    new_array << array.pop
#  end
#  puts new_array
#end
#
#
#reverse([1,2,3,4]) == [4,3,2,1]          # => true
#reverse(%w(a b e d c)) == %w(c d e b a)  # => true
#reverse(['abc']) == ['abc']              # => true
#reverse([]) == []

#def merge(array_1, array_2)
#  new_array = array_1 + array_2
#  new_array.uniq
#end
#puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#def halvsies(array)
#  array_1 = array[0...((array.size/2.0).round)]
#  array_2 = array[(array_1.size)..(array.size)]
#  puts array_1.to_s
#  puts array_2.to_s
#end
#
#halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
#halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
#halvsies([5]) == [[5], []]
#halvsies([]) == [[], []]

#def find_dup(array)
#  store = []
#  dupe = []
#  array.each do |number|
#    if store.include? number
#      dupe << number
#    else
#     store << number
#   end
#  end
#  puts dupe
#end
#
#find_dup([1, 5, 3, 1])
#find_dup([18, 9, 36, 96, 31, 19, 54, 75, 42, 15,
#         38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#         14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#         78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#         89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#        41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#         55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#         85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#        40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#        7,  34, 57, 74, 45, 11, 88, 67,  5, 58])

#def include?(array, x)
#  if array.include? x
#    puts true
#  else
#    puts false
#  end
#end
#
#include?([1,2,3,4,5], 3) == true
#include?([1,2,3,4,5], 6) == false
#include?([], 3) == false
#include?([nil], nil) == true
#include?([], nil) == false

def triangle(number)
  space_counter = number
  star_counter = 0
  number.times do
    space_counter.times do print " "
    end
    star_counter.times do print "*"
    end
  puts "*"
  space_counter -= 1
  star_counter += 1
  end
end

triangle(10)





























