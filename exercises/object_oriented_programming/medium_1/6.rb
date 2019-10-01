class GuessingGame
  def initialize(lowest, highest)
    @lowest = lowest
    @highest = highest
  end
  def play
    @number = rand(@lowest..@highest)
    @guesses = Math.log2(@highest - @lowest).to_i + 1
    @correct = false
    until @guesses == 0 || @correct
      check prompt
      @guesses -= 1
    end
    if @correct
      puts "you won"
    else
      puts "you lost"
    end
  end
  
  def prompt
    puts "You have #{@guesses} guesses remaining."
    print "Guess a number between #{@lowest} and #{@highest}: "
    user_input = gets.chomp.to_i
    until (@lowest..@highest) === user_input
      puts "not a valid number"
      user_input = gets.chomp.to_i
    end
    user_input
  end
  
  def check num
    if num == @number
      @correct = true
    else
      if num > @number
        puts "too high"
      else
        puts "too low"
      end
    end
  end
end

game = GuessingGame.new(501, 15000)
game.play
