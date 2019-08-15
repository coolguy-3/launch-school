a = ' '
b = ' '
c = ' '
d = ' '
e = ' '
f = ' '
g = ' '
h = ' '
i = ' '

def board(a, b, c, d, e, f, g, h, i)
puts '   |   |   '
puts ' ' + a + ' | ' + b + ' | ' + ' ' + c
puts '___|___|___'
puts '   |   |   '
puts ' ' + d + ' | ' + e + ' | ' + ' ' + f
puts '___|___|___'
puts '   |   |   '
puts ' ' + g + ' | ' + h + ' | ' + ' ' + i
puts '   |   |   '
end

def check_winner(array, x_o)

  downs_1 = [array[0], array[3], array[6]]
  downs_2 = [array[1], array[4], array[7]]
  downs_3 = [array[2], array[5], array[8]]
  cross_1 = [array[0], array[4], array[8]]
  cross_2 = [array[2], array[4], array[6]]

  case
  when array[0, 3].all? { |place| place == x_o } then true
  when array[3, 3].all? { |place| place == x_o } then true
  when array[6, 3].all? { |place| place == x_o } then true
  when downs_1.all? { |place| place == x_o } then true
  when downs_2.all? { |place| place == x_o } then true
  when downs_3.all? { |place| place == x_o } then true
  when cross_1.all? { |place| place == x_o } then true
  when cross_2.all? { |place| place == x_o } then true
  else false
  end
  
end

puts "Welcome to Tic-Tac-Toe!"

loop do
  
  array = [a, b, c, d, e, f, g, h, i]
  
  board(a, b, c, d, e, f, g, h, i)
  
  if check_winner(array, 'X')
    puts "you win!"
    break
  elsif check_winner(array, 'O')
    puts "computer wins ur a loser!!"
    break
  elsif array.all? { |place| place != ' ' }
    puts "It's a tie..."
    break
  end
  
  loop do
    
    print "Select an open space(1-9): "
    user_input = gets.chomp
    
    if array[(user_input.to_i-1)] == ' '
      case user_input
      when '1'
        a = 'X'
      when '2'
        b = 'X'
      when '3'
        c = 'X'
      when '4'
        d = 'X'
      when '5'
        e = 'X'
      when '6'
        f = 'X'
      when '7'
        g = 'X'
      when '8'
        h = 'X'
      when '9'
        i = 'X'
      end
      break
    else
      puts "INVALID SELECTION!!"
      sleep(1)
    end
  end
  
  array = [a, b, c, d, e, f, g, h, i]
  
  board(a, b, c, d, e, f, g, h, i)
  
  if check_winner(array, 'X')
    puts "you win!"
    break
  elsif check_winner(array, 'O')
    puts "computer wins ur a loser!!"
    break
  elsif array.all? { |place| place != ' ' }
    puts "It's a tie..."
    break
  end
  
  print 'Computer is thinking'
  sleep(0.3)
  print '.'
  sleep(0.3)
  print '.'
  sleep(0.3)
  puts '.'
  sleep(0.5)
  
  loop do
    
    if array[4] == ' '
      computer_input = 5
    else
      computer_input = rand(1..9)
    end
  
    if array[(computer_input-1)] == ' '
        case computer_input
        when 1
          a = 'O'
        when 2
          b = 'O'
        when 3
          c = 'O'
        when 4
          d = 'O'
        when 5
          e = 'O'
        when 6
          f = 'O'
        when 7
          g = 'O'
        when 8
          h = 'O'
        when 9
          i = 'O'
        end
      break
    end
  end
end
