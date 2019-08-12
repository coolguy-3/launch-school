#def longest_sentence(document)
#  sentences = document.split(/((?<=[a-z0-9)][.?!])|(?<=[a-z0-9][.?!]"))\s+(?="?[A-Z])/)
#  longest_sentence = ['']
#  sentences.each do |sentence|
#    if sentence.size > longest_sentence[0].size
#      longest_sentence[0] = sentence
#    end
#  end
#  puts longest_sentence[0].split(" ").size
#end

BLOCKS = { 'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A', 'G' => 'T', 'R' => 'E', 'F' => 'S',
    'J' => 'W', 'H' => 'U',
    'V' => 'I', 'L' => 'Y', 'Z' => 'M' }

def block_word?(string)
  value = true
  word = string.split("")
  BLOCKS.each do |x, y|
    if (word.include? x) && (word.include? y)
      value = false
    end
  end
  puts value
end
    
def letter_percentages(string)
  lowercase = 0
  uppercase = 0
  neither = 0
  
  characters = string.split("")
  
  characters.each do |char|
    if ('a'..'z').include? char
      lowercase += 1
    elsif ('A'..'Z').include? char
      uppercase += 1
    else
      neither += 1
    end
  end
  
  if lowercase == 0
    lowercase_perc = 0
  else
    lowercase_perc = (100 / (characters.size / lowercase.to_f))
  end
  
  if uppercase == 0
    uppercase_perc = 0
  else
    uppercase_perc = (100 / (characters.size / uppercase.to_f))
  end
  
  if neither == 0
    neither_perc = 0
  else
    neither_perc = (100 / (characters.size / neither.to_f))
  end
  
  hash = { lowercase: lowercase_perc,
           uppercase: uppercase_perc,
           neither: neither_perc }
      
  puts hash
  
end

def balanced?(string)
  left_count = 0
  right_count = 0
  so_far = true
  
  string.split("").each do |char|
    if char == '('
      so_far = false
    elsif so_far == false && char == ')'
      so_far = true
    end
  end
  
  string.split("").each do |char|
    if char == '('
      left_count += 1
    elsif char == ')'
      right_count += 1
    end
  end
  
  if so_far == true && left_count == right_count
    puts true
  else
    puts false
  end
  
end

def tri(x, y, z)
  
  array = [x, y, z]
  array.sort!
  
  if array.include? 0
    :invalid
  elsif x == y && y == z
    :equilateral
  elsif (x == y && x != z) || (x == z && x != y) || (y == z && y != x)
    if array[2] > (array[0] + array[1])
      :invalid
    else
      :isosceles
    end
  else
    if array[2] > (array[0] + array[1])
      :invalid
    else
      :scalene
    end
  end
end

def triangle(x, y, z)
  array = [x, y, z]
  
  if (array.include? 0) || ((x + y + z) != 180)
    :invalid
  else
    if array.max > 90
      :obtuse
    elsif array.max == 90
      :right
    else
      :acute
    end
  end
end

require 'date'

def friday_13th(year)

  today = Date.new(year, 1, 1)
  friday_counter = 0
  
  365.times do
    if today.wday == 5 && today.mday == 13
      friday_counter += 1
    end
  today += 1
  end
  puts friday_counter
end


def each_digit(x)
  array = []
  switch = true
  x.to_s.split("").each do |num|
    if array.include? num
      switch = false
    end
    array << num
  end
  switch
end

def featured(x)
  featured_number = x
  until (featured_number.odd?) && (each_digit(featured_number)) && (featured_number != x) && (featured_number % 7 == 0)
    featured_number = featured_number += 1
  end
  puts featured_number
end

def bubble_sort!(array)
  swap_switch = false
  
  current_counter = 0
  comp_counter = 1
  
  loop do
    swap_switch = false
    array.each do |num|
      if comp_counter >= array.size == false
        if num > array[comp_counter]
          array[current_counter] = array[comp_counter]
          array[comp_counter] = num
          swap_switch = true
        end
      end
    current_counter += 1
    comp_counter += 1
    end
    current_counter = 0
    comp_counter = 1
    if swap_switch == false
      break
    end
  end
  array
end




def sum_square_difference(x)
  
  counter = 1
  sum = 0
  
  x.times do
    sum += counter
    counter += 1
  end
  
  sum_square = sum * sum
  
  counter = 1
  sum = 0
  
  x.times do
    sum += (counter ** 2)
    counter += 1
  end
  
  square_sum = sum
  
  difference = sum_square - square_sum
  
  puts difference

end

sum_square_difference(3)
sum_square_difference(10)
sum_square_difference(1)
sum_square_difference(100)





















