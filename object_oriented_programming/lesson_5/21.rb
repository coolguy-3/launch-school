class Deck
  VALUES = { two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 10, queen: 10, king: 10, ace: 11 }
  @@deck_cards = []
  VALUES.each do |card, _|
    4.times do
      @@deck_cards << card
    end
  end

  def shuffled
    @@deck_cards.shuffle!
  end

  def score(cards)
    points = 0
    aces = []
    cards.each do |card|
      check_ace = points
      points += VALUES[card]
      if points - 11 == check_ace
        aces << 'ace'
      end
      if points > 21
        until points < 22 || aces == []
          points -= 10
          aces.pop
        end
      end
    end
    points
  end
end

class Dealer < Deck
  attr_reader :hand
  
  def initialize
    @hand = []
  end
  
  def deal
    @hand << @@deck_cards.pop
  end
  
  def show
    print "Dealer Cards: hidden card, "
    @hand[1..-2].each do |card|
      print "#{card}, "
    end
    puts "#{@hand[-1]}."
  end
end

class Player < Dealer
  def show
    print "Your cards: "
    @hand[0..-2].each do |card|
        print "#{card}, "
    end
    puts "#{@hand[-1]}. (#{score(@hand)})"
  end
end

class Game
  @@dealer_score = 0
  @@user_score = 0
  
  def initialize
    print "press enter to play: "
    gets.chomp
    Game.play
  end
  
  def self.play
    deck = Deck.new.shuffled
    computer = Dealer.new
    user = Player.new
    2.times do
      computer.deal
      user.deal
    end
    computer.show
    user.show
    loop do
      if user.score(user.hand) >= 21
        break
      else
        print "hit or stay? "
        user_input = gets.chomp
        if user_input == 'hit'
          user.deal
          user.show
        elsif user_input == 'stay'
          break
        end
      end
    end
    if user.score(user.hand) > 21
      puts "Busted!"
      @@dealer_score += 1
    elsif user.score(user.hand) == 21
      puts "21!"
      @@user_score += 1
    else
      until computer.score(computer.hand) >= 17
        computer.deal
      end
      if computer.score(computer.hand) > 21
        puts "Dealer Busted! You win!"
        @@user_score += 1
      elsif computer.score(computer.hand) > user.score(user.hand)
        puts "Dealer Wins! (#{computer.score(computer.hand)})"
        @@dealer_score += 1
      else
        puts "You win!"
        @@user_score += 1
      end
    end
    puts "Dealer Score: #{@@dealer_score}"
    puts "Your Score: #{@@user_score}"
    print "Play again(y/n)? "
    new_game = gets.chomp
    if new_game.downcase == 'y'
      Game.play
    end
  end
end

Game.new