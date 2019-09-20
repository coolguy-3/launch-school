# create a game with a three by three board and two players
# human player marks squares with Xs and Computer marks squares with Os
# players take turns marking squares until one has three in a row
#
# start by creating a Game class that when invoked initializes a new board
# when a new board class object is initialized 9 sqaure classes are initialized
# and set to instance variables within board
# sqaure classes contain an intance variable which holds current square state
# when a square is initialized automatically set state instance value to nothing
#
#player and computer class instances are initialized
#board has a winner method that checks to see if there is winner
# board has a loop that allows each player to invoke a choose method that interacts with board variables
# until winner method returns true
#after choosing board method display is called on board
#a counter has been initialized and counts each turn and when a win condition is met the counter
# is used to determine who has the win
# if the counter reaches 9 a tie is called and the loop is broke

class Board
  attr_accessor :a, :b, :c, :d, :e, :f, :g, :h, :i
  
  def initialize
    @a = ' '
    @b = ' '
    @c = ' '
    @d = ' '
    @e = ' '
    @f = ' '
    @g = ' '
    @h = ' '
    @i = ' '
  end
  
  def display
    puts '   |   |   '
    puts ' ' + a + ' | ' + b + ' | ' + ' ' + c
    puts '___|___|___'
    puts '   |   |   '
    puts ' ' + d + ' | ' + e + ' | ' + ' ' + f
    puts '___|___|___'
    puts '   |   |   '
    puts ' ' + g + ' | ' + h + ' | ' + ' ' + i
  end
  
  def win(x_o)
    across_1 = [a, b, c]
    across_2 = [d, e, f]
    across_3 = [g, h, i]
    downs_1 = [a, d, g]
    downs_2 = [b, e, h]
    downs_3 = [c, f, i]
    cross_1 = [a, e, i]
    cross_2 = [c, e, g]
      
    case
    when across_1.all? { |place| place == x_o } then true
    when across_2.all? { |place| place == x_o } then true
    when across_3.all? { |place| place == x_o } then true
    when downs_1.all? { |place| place == x_o } then true
    when downs_2.all? { |place| place == x_o } then true
    when downs_3.all? { |place| place == x_o } then true
    when cross_1.all? { |place| place == x_o } then true
    when cross_2.all? { |place| place == x_o } then true
    else false
    end
  end
end

class Player
  
  def initialize(game)
    @squares_hash = { '1' => game.a,
                      '2' => game.b,
                      '3' => game.c,
                      '4' => game.d,
                      '5' => game.e,
                      '6' => game.f,
                      '7' => game.g,
                      '8' => game.h,
                      '9' => game.i }
    @game = game
  end
  
  def choose
    loop do
      loop do
        print "Choose a space(1-9): "
        @input = gets.chomp
        if (1..9).include? @input.to_i
          break
        else
          puts 'invalid input'
        end
      end
    
      if @squares_hash[@input.to_s] == ' '
        break
      else
        puts "That space is taken"
      end
    end
    case @input
    when '1' then @game.a = 'X'
    when '2' then @game.b = 'X'
    when '3' then @game.c = 'X'
    when '4' then @game.d = 'X'
    when '5' then @game.e = 'X'
    when '6' then @game.f = 'X'
    when '7' then @game.g = 'X'
    when '8' then @game.h = 'X'
    when '9' then @game.i = 'X'
    end
  end
end

class Computer
  def initialize(game)
    @squares_hash = { '1' => game.a,
                      '2' => game.b,
                      '3' => game.c,
                      '4' => game.d,
                      '5' => game.e,
                      '6' => game.f,
                      '7' => game.g,
                      '8' => game.h,
                      '9' => game.i }
    @game = game
  end
    
  def choose
    if @squares_hash['5'] == ' '
      @input = 5
    else
      loop do
        @input = rand(1..9)
        if @squares_hash[@input.to_s] == ' '
          break
        end
      end
    end
    
    case @input.to_s
    when '1' then @game.a = 'O'
    when '2' then @game.b = 'O'
    when '3' then @game.c = 'O'
    when '4' then @game.d = 'O'
    when '5' then @game.e = 'O'
    when '6' then @game.f = 'O'
    when '7' then @game.g = 'O'
    when '8' then @game.h = 'O'
    when '9' then @game.i = 'O'
    end
  end
end

class Game
  attr_reader :ttc
    
  @@player_count = 0
  @@computer_count = 0
    
  def initialize
    @ttc = Board.new
  end
    
  def play
    print "Welcome to Tic-Tac-Toe, press enter to play: "
    gets.chomp
    @ttc.display
    whose_turn = 0
    loop do
      Player.new(@ttc).choose
      @ttc.display
      whose_turn += 1
      if whose_turn == 9
        puts "Tie Game"
        break
      end
      if @ttc.win('X')
        puts 'You win!'
        @@player_count += 1
        break
      end
      puts "computer is thinking..."
      sleep(1)
      Computer.new(@ttc).choose
      @ttc.display
      whose_turn += 1
      if @ttc.win('O')
        puts 'Computer wins...'
        @@computer_count += 1
        break
      end
    end
    puts "Player score: #{@@player_count}"
    puts "Computer score: #{@@computer_count}"
    puts "Would you like to play again(y/n)?"
    play_again = gets.chomp
    if play_again.downcase == 'y'
      Game.new.play
    end
  end
end

Game.new.play
