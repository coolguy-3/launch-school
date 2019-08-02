#def ascii_value(string)
#  value = 0
#  string.split("").each do |char|
#    value += char.ord
#  end
#  value
#end
#
#
#puts ascii_value('Four score')
#puts ascii_value('Launch School')
#puts ascii_value('a')
#puts ascii_value('')

#def format(num)
#  if (0..9).include? (num)
#    num = num.to_s.prepend('0')
#  end
#  num
#end
#
#def time_of_day(num)
#
#  hour = nil
#  min = nil
# if num.zero?
#    hour = "00"
#    min = "00"
#  elsif num > 0
#    current_time = 0 + num
#    if current_time > 1440
#      current_time = 0 + (current_time % 1440)
#   end
#   min = current_time % 60
#   hour = (current_time - min) / 60
#  elsif num < 0
#    current_time = 1440 + num
#   if current_time < 0
#     current_time = 1440 + (current_time % 1440)
#      current_time = 0 + (current_time % 1440)
#    end
#    min = current_time % 60
#    hour = (current_time - min) / 60
#  end
#  puts "#{format(hour)}:#{format(min)}"
#end
#
#time_of_day(0)
#time_of_day(-3)
#time_of_day(35)
#time_of_day(-1437)
#time_of_day(3000)
#time_of_day(800)
#time_of_day(-4231)

#def after_midnight(string)
#  hours = string.split("")[0, 2].join.to_i * 60
#  mins = string.split("")[3, 2].join.to_i
#  the_time = hours + mins
#  if the_time == 1440
#    the_time = 0
#  end
#  puts the_time
#end
#
#def before_midnight(string)
#  hours = string.split("")[0, 2].join.to_i * 60
#  mins = string.split("")[3, 2].join.to_i
#  the_time = 1440 - (hours + mins)
#  if the_time == 1440
#      the_time = 0
#  end
#  puts the_time
#end

#after_midnight('00:00')
#before_midnight('00:00')
#after_midnight('12:34')
#before_midnight('12:34')
#after_midnight('24:00')
#before_midnight('24:00')

#def swap(string)
#  new_array = []
#  string.split(" ").each do |word|
#    last_char = word.slice!(-1)
#    first_char = word.slice!(0).to_s
#    new_array << (word.prepend last_char << first_char)
#  end
#  puts new_array.join(" ")
#end
#
#swap('Oh what a wonderful day it is')
#swap('Abcde')
#swap('a')



































