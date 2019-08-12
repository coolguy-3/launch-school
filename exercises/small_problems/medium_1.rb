def rotate_array(array)
  array << array.shift
  puts array.to_s
end

def max_rotation(num)
  rotated_num = nil
  count = num.to_s.size
  count.times do
  untouched = num.to_s[0...num.to_s.size-count]
  left_num = num.to_s[num.to_s.size-count..num.to_s.size].split("")
  left_num << left_num.shift
  rotated_num = (untouched + left_num.join("")).to_i
  num = rotated_num
  count -= 1
  end
  puts rotated_num
end

def toggle(string)
  if string == 'on'
    string = 'off'
  elsif string == 'off'
    string = 'on'
  end
end

def lights(switches)
  
  count = 1
  
  switch_array = []
  
  switches.times do
    switch_array << 'off'
  end
  
  multiples = [0]
  multiple = 1
  multiple_counter = 0
  
  switches.times do
    multiples << multiple + multiple_counter
    multiple_counter += multiple
  end
  
  switches.times do
    switch_array.each_with_index do |light, index|
      if multiples.include? index
        switch_array[index] = toggle(switch_array[index])
      end
    end
    #puts switch_array.to_s
    count += 1
    
    multiples = []
    multiple = count
    multiple_counter = 0
    
    switches.times do
        multiples << multiple + multiple_counter - 1
        multiple_counter += multiple
    end
  end
  lights_that_are_on = []
  switch_array.each_with_index do |light, index|
    if light == 'on'
      lights_that_are_on << index += 1
    end
  end
  puts lights_that_are_on.to_s
end

def diamond(number)
  stars = 1
  spaces = number/2
  (number/2.0).round.times do
    print " " * spaces
    puts "*" * stars
    spaces -= 1
    stars += 2
  end
  
  spaces += 1
  stars -= 2
  
  (number/2).times do
    spaces += 1
    stars -= 2
    print " " * spaces
    puts "*" * stars
  end
end

class String
    def is_number?
        true if Float(self) rescue false
    end
end

def minilang(string)
  
  register = 0
  
  stack = []
  
  string.split(" ").each do |command|
    if command.is_number?
      register = command.to_i
    else case command
           when 'PUSH' then stack << register
           when 'ADD' then register += stack.pop
           when 'SUB' then register -= stack.pop
           when 'MULT' then register *= stack.pop
           when 'DIV' then register /= stack.pop
           when 'MOD' then register = stack.pop % register
           when 'POP' then register = stack.pop
           when 'PRINT' then puts register
         end
    end
  end
end


DIGIT_HASH = {
    'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
    'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
    DIGIT_HASH.keys.each do |word|
        words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
    end
    words
end

def fib(n)
  if n <= 0
    0
  elsif n <= 2
    1
  else
    s = 1
    f = s
    (n-2).times do
      n = s
      s = f
      f = s + n
    end
  end
  f.to_s[-1]
end

puts fib(1_000_007)














