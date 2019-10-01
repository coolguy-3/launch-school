class Card
    include Comparable
    attr_reader :rank, :suit
    
    VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }
    
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
    
    def to_s
        "#{rank} of #{suit}"
    end
    
    def value
        VALUES.fetch(rank, rank)
    end
    
    #  def <=>(other_card)
    #   value <=> other_card.value
    #end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  def initialize
    @cards = []
    RANKS.each do |rank|
      SUITS.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end
  
  def draw
    @cards.pop
  end
end

class Pokerhand
  attr_reader :cards
  
  def initialize(deck)
    @deck = deck
    @cards = []
    draw_5
  end
  
  def draw_5
    5.times do
      @cards << @deck.draw
    end
    puts @cards
  end
  
  def flush?
      suit = @cards.first.suit
      @cards.all? { |card| card.suit == suit }
  end
  
  def straight?
      return false if @rank_count.any? { |_, count| count > 1 }
      
      @cards.min.value == @cards.max.value - 4
  end
  
  def n_of_a_kind?(number)
      @rank_count.one? { |_, count| count == number }
  end
  
  def straight_flush?
      flush? && straight?
  end
  
  def royal_flush?
      straight_flush? && @cards.min.rank == 10
  end
  
  def four_of_a_kind?
      n_of_a_kind?(4)
  end
  
  def full_house?
      n_of_a_kind?(3) && n_of_a_kind?(2)
  end
  
  def three_of_a_kind?
      n_of_a_kind?(3)
  end
  
  def two_pair?
      @rank_count.select { |_, count| count == 2 }.size == 2
  end
  
  def pair?
      n_of_a_kind?(2)
  end
  
  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when n_of_a_kind? then 'Four of a kind'
    when full_house?     then 'Full house'
    when flush?          then 'Flush'
    when straight?       then 'Straight'
    when two_pair?       then 'Two pair'
    when pair?           then 'Pair'
    else                       'High card'
    end
  end
end

deck = Deck.new
new_hand = Pokerhand.new(deck)
puts new_hand.evaluate

