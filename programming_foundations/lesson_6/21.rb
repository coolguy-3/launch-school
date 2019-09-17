def score(array, hash)
  sum = 0
  array.each do |card|
    sum += hash[card]
  end
  sum
end

def hand(array)
  
  proxy = array.map do |card|
    if card == :ace_1
      :ace
    else
      card
    end
  end
  
  proxy[0..-2].each do |card|
    print card.to_s + ', '
  end
  puts proxy[-1].to_s
end

print "Welcome to 21! Press Enter to play."
start_game = gets.chomp


user_score = 0

dealer_score = 0


loop do
    
values = { two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 10, queen: 10, king: 10, ace: 11 }

deck = []

values.each do |key, value|
  4.times do
    deck << key
  end
end

deck.shuffle!
deck.shuffle!
deck.shuffle!

dealers_cards = []

your_cards = []

2.times do
dealers_cards << deck.pop
your_cards << deck.pop
end

print "Dealers cards: unknown card, "
hand(dealers_cards[1..-1])
print "Your cards: "
hand(your_cards)
puts "(" + score(your_cards, values).to_s + ")"

values[:ace_1] = 1

bust = false

  loop do
    
    if score(your_cards, values) > 21
      bust = true
      break
    elsif score(your_cards, values) == 21
      break
    end
    
    puts "hit or stay?"
    user_input = gets.chomp

    if user_input == 'hit'
      your_cards << deck.pop
        if score(your_cards, values) > 21
          your_cards.map! do |card|
            if card == :ace
              :ace_1
            else
              card
            end
          end
        end
      print "Your cards: "
      hand(your_cards)
      puts "(" + score(your_cards, values).to_s + ")"
    elsif  user_input == 'stay'
      break
    else
      puts "invalid"
    end

  end
  
  if bust == true
    puts "Busted!"
    dealer_score += 1
  else
  
    until score(dealers_cards, values) >= 17
      dealers_cards << deck.pop
      if score(dealers_cards, values) > 21
          dealers_cards.map! do |card|
              if card == :ace
                  :ace_1
                  else
                  card
              end
          end
      end
    end
    
    if score(dealers_cards, values) > 21
      user_score += 1
      puts "Dealer Busted"
    else
      print "Dealers cards: "
      hand(dealers_cards)
      print "Your cards: "
      hand(your_cards)
      puts "(" + score(your_cards, values).to_s + ")"
  
      if score(your_cards, values) > score(dealers_cards, values)
        user_score += 1
        puts "You Win"
      elsif score(dealers_cards, values) > score(your_cards, values)
        dealer_score += 1
        puts "Dealer Wins"
      else
        puts "Tie"
      end
    end
  end
  
  puts "Your score: #{user_score}"
  puts "Dealer score: #{dealer_score}"
  puts "Would you like to play again?(y/n): "
  play_again = gets.chomp
  
  if play_again != 'y'
    break
  end
  
end







