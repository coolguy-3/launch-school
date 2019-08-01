#def short_long_short(x, y)
#  if x.size < y.size
#    puts x += y += x
#  else
#    puts y += x += y
#  end
#end
  

#short_long_short('abc', 'defgh')
#short_long_short('abcde', 'fgh')
#short_long_short('', 'xyz')

#def century(year)
#  count = 0
#  num = 0
#  until count >= year
#    count += 100
#    num += 1
#  end
#
#  if [11, 12, 13].include?(num % 100)
#    b = 'th'
#  else
#    last_digit = num % 10
#    case last_digit
#      when 1 then b ='st'
#      when 2 then b ='nd'
#      when 3 then b ='rd'
#      else b = 'th'
#    end
#  end
#num.to_s + b
#end

#puts century(2000)
#puts century(2001)
#puts century(1965)
#puts century(256)
#puts century(5)
#puts century(10103)
#puts century(1052)
#puts century(1127)
#puts century(11201)

#def leap_year?(year)
#  if year % 4 == 0
#    if year < 1752
#      true
#    else
#      if year % 100 == 0 && year % 400 != 0
#        false
#      else
#        true
#      end
#   end
#  else
#    false
#  end
#end

#puts leap_year?(2016)
#puts leap_year?(2015)
#puts leap_year?(2100)
#puts leap_year?(2400)
#puts leap_year?(240000)
#puts leap_year?(240001)

#def multisum(x)
#  sum = 0
#  for number in (1..x)
#    if number % 3 == 0 || number % 5 == 0
#     sum += number
#    end
#  end
#  puts sum
#end


#multisum(3)
#multisum(5)
#multisum(10)
#multisum(1000)

#def running_total(array)
#  total_array = []
#  counter = 0
#  sum = 0
#  loop do
#    sum += array[counter].to_i
#    total_array << sum
#    counter += 1
#    break if counter == array.size
#  end
#  puts total_array
#end
#
#running_total([2, 5, 13])
#running_total([14, 11, 7, 15, 20])
#running_total([3])
#running_total([])

#def string_to_integer(string)
#  negative = 'off'
#  if string.include?('+')
#   string.delete!('+')
# elsif string.include?('-')
#    string.delete!('-')
#    negative = 'on'
#  end
# new_array = string.split("").map do |number|
#    case number
#      when '0' then 0
#      when '1' then 1
#      when '2' then 2
#      when '3' then 3
#      when '4' then 4
#      when '5' then 5
#      when '6' then 6
#      when '7' then 7
#      when '8' then 8
#      when '9' then 9
#      else nil
#   end
#  end
#  final_integer = new_array.inject{|a,i| a*10 + i}
#  if negative == 'on'
#   return final_integer * -1
# else
#    return final_integer
#  end
#end
#
#puts string_to_integer('+4321')
#puts string_to_integer('-570')
#puts string_to_integer('835699223')
#
#DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
#
#def integer_to_string(number)
#  result = ''
#  value = nil
#    if number < 0
#      number *= -1
#      value = 'negative'
#    elsif number > 0
#      value = 'positive'
#    end
#    loop do
#        number, remainder = number.divmod(10)
#        result.prepend(DIGITS[remainder])
#        break if number == 0
#    end
#    if value == 'positive'
#      return result.prepend('+')
#    elsif value == 'negative'
#      return result.prepend('-')
#    else
#      return '0'
#    end
#end
#
#puts integer_to_string(-4321)
#puts integer_to_string(0)
#puts integer_to_string(+5000)





























































