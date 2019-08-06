#def interleave(array_1, array_2)
#  new_array = []
#  until array_1.size == 0 && array_2.size == 0
#    new_array << array_1.shift
#    new_array << array_2.shift
#  end
#  puts new_array.to_s
#end
#interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#def letter_case_count(string)
#    totals = { lowercase: 0, uppercase: 0, neither: 0 }
#  string.split("").each do |character|
#    if ('a'..'z').include? character
#      totals[:lowercase] += 1
#    elsif ('A'..'Z').include? character
#      totals[:uppercase] += 1
#    else
#      totals[:neither] += 1
#    end
#  end
#  puts totals
#end
#
#letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
#letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
#letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
#letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#def word_cap(string)
#  new_sent = string.downcase.split(" ").map do |word|
#    word.capitalize
#  end
#  puts new_sent.join(" ")
#end
#
#
#word_cap('four score and seven') == 'Four Score And Seven'
#word_cap('the javaScript language') == 'The Javascript Language'
#word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#def swapcase(string)
#  swapped = string.split("").map do |character|
#    if character == character.upcase
#      character.downcase
#    elsif character == character.downcase
#      character.upcase
#    else
#      character
#   end
#  end
#  puts swapped.join
#end

#swapcase('CamelCase') == 'cAMELcASE'
#swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#def staggered_case(string)
# counter = 0
# staggered = string.split("").map do |char|
#   if counter.even?
#     counter += 1
#     char.upcase
#   elsif counter.odd?
#     counter += 1
#     char.downcase
#   else
#      char
#   end
# end
# puts staggered.join
#end
#
#staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
#staggered_case('ALL_CAPS') == 'AlL_CaPs'
#staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#def show_multiplicative_average(array)
#  product = array.reduce (:*)
#  puts product/array.size.to_f
#end
#
#show_multiplicative_average([3, 5])
#show_multiplicative_average([6])
#show_multiplicative_average([2, 5, 7, 11, 13, 17])

#def multiply_list(arr_1, arr_2)
#  new = []
#  until arr_1 == [] && arr_2 == []
#    new << arr_1.shift * arr_2.shift
#  end
#  puts new.to_s
#end
#
#multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#def multiply_all_pairs(arr_1, arr_2)
#  new = []
#  until arr_2 == []
#    arr_1.each do |num|
#      new << num * arr_2[0]
#    end
#    arr_2.shift
#  end
#  puts new.sort
#end
#
#multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#def penultimate(string)
#  puts string.split[-2]
#end
#
#penultimate('last word') == 'last'
#penultimate('Launch School is great!') == 'is'








































