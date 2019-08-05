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

#def cleanup(string)
#  new_string = []
#  new_word = []
#  string.split(" ").each do |word|
#    word.split("").each do |character|
#      if ('a'..'z').include? character
#        new_word << character
#      end
#    end
#    if new_word.join("") != ''
#      new_string << new_word.join("")
#      new_word.clear
#    end
#  end
#  new_string.join(" ")
#end
#
#puts cleanup("---what's my +*& line?")

#def word_sizes(string)
#  hash = {}
#  how_many = 0
#  string.split(" ").each do |word|
#   word.delete!('^A-Za-z')
#   how_many = word.size
#    if hash.key?(how_many)
#      hash[how_many] = hash[how_many] + 1
#    else
#      hash[how_many] = 1
#    end
#  end
#  puts hash
#end
#
#word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
#word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
#word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
#word_sizes('') == {}

#NUMBERS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen)
#
#def alphabetic_number_sort(array)
#  array.sort_by { |number| NUMBERS[number] }
#end
#
#puts alphabetic_number_sort((0..15).to_a)

#def crunch(string)
#  crunched_word = []
#  counter = -1
#  string.split("").each do |character|
#    if crunched_word[counter] != character
#      crunched_word << character
#      counter += 1
#    end
#  end
#  puts crunched_word.join
#end
#
#crunch('ddaaiillyy ddoouubbllee') == 'daily double'
#crunch('4444abcabccba') == '4abcabcba'
#crunch('ggggggggggggggg') == 'g'
#crunch('a') == 'a'
#crunch('') == ''



def print_in_box(string)
  length = string.size + 2
  print "+"
  length.times do print "-"
  end
  puts "+"
  print "|"
  length.times do print " "
  end
  puts "|"
  puts string.prepend("| ") << " |"
  print "|"
  length.times do print " "
  end
  puts "|"
  print "+"
  length.times do print "-"
  end
  puts "+"
end
    
print_in_box('')































