puts "Welcome to rock paper scissors, press enter to play."
enter = gets.chomp
@u_score = 0
@c_score = 0
user_input = nil
computer_input = nil

def game(x, y)
  if x == 1 && y == 2
    @c_score += 1
    puts "computer wins"
  elsif x == 1 && y == 3
    @u_score += 1
    puts "you win"
  elsif x == 2 && y == 1
    @u_score += 1
    puts "you win"
  elsif x == 2 && y == 3
    @c_score += 1
    puts "computer wins"
  elsif x == 3 && y == 1
    @c_score += 1
    puts "computer wins"
  else
    @u_score += 1
    puts "you win"
  end
  sleep(1)
  puts "Your score: #{@u_score}"
  puts "Computer score: #{@c_score}"
end

loop do

  loop do
    print "Enter rock, paper, or scissors => "
    user_input = gets.chomp.downcase
    case user_input
      when "rock"
        user_input = 1
        break
      when "paper"
        user_input = 2
        break
      when "scissors"
        user_input = 3
        break
      else
        puts "not valid"
    end
  end

  sleep(1)

  computer_input = rand(3)
  case computer_input
    when 1
      puts "computer chose rock!"
    when 2
      puts "computer chose paper!"
    else
      puts "computer chose scissors!"
  end

  sleep(1)

  if user_input != computer_input
    game(user_input, computer_input)
  else
    puts "its a tie!"
  end

end

