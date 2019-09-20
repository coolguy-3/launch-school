class Player
  attr_reader :choice
    
  def choose
    @choice = 'none'
    loop do
      print "Choose rock, paper, or scissors: "
      @choice = gets.chomp
      if @choice == 'rock' || @choice == 'scissors' || @choice == 'paper'
        break
      else
        puts "not valid try again"
      end
    end
  end
end
    
class Computer
  attr_reader :choice
        
  def choose
    rpsarray = ['rock', 'paper', 'scissors']
    @choice = rpsarray.shuffle[0]
  end
end

class Game
  attr_accessor :human, :computer
        
  @@player_score = 0
  @@computer_score = 0
        
  def initialize
    @human = Player.new
    @computer = Computer.new
    print "Welcome to Object Oriented Rock Paper Scissors, press enter to play."
    gets.chomp
  end
        
def play
  @human.choose
  @computer.choose
  arr = ['rock', 'paper', 'scissors']
    if @human.choice == @computer.choice
      puts "Its a tie! You both put #{@human.choice}..."
    elsif @human.choice == arr[0] && @computer.choice == arr[1]
      puts "You chose #{@human.choice} and computer chose #{@computer.choice}... YOU LOSE!"
      @@computer_score += 1
    elsif @human.choice == arr[1] && @computer.choice == arr[2]
      puts "You chose #{@human.choice} and computer chose #{@computer.choice}... YOU LOSE!"
      @@computer_score += 1
    elsif @human.choice == arr[2] && @computer.choice == arr[0]
      puts "You chose #{@human.choice} and computer chose #{@computer.choice}... YOU LOSE!"
      @@computer_score += 1
    else
      puts "You chose #{@human.choice} and computer chose #{@computer.choice}... YOU WIN!"
      @@player_score += 1
    end
    puts "Computer score: #{@@computer_score}"
    puts "Your Score: #{@@player_score}"
    print "Would you like to play again? (y/n)"
    play_again = gets.chomp
    if play_again.downcase == 'y'
      self.play
    end
  end
end

Game.new.play