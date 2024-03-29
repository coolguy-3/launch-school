#counter = 10
#
#def decrease(counter)
#    counter -= 1
#end
#
#10.times do
#    puts counter
#    counter = decrease(counter)
#end
#
#puts 'LAUNCH!'
#
#def shout_out_to(name)
#    name.upcase!
#
#    puts 'HEY ' + name
#end
#
#shout_out_to('you')
#
#def valid_series?(nums)
#    return false if nums.sum != 47
#
#    odd_count = nums.count { |n| n.odd? }
#    odd_count == 3 ? true : false
#end
#
#p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
#p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
#p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
#p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
#p valid_series?([10, 6, 19, 2, 6, 4])             # should return false
#

#def reverse_sentence(sentence)
#    words = sentence.split(' ')
#   reversed_words = []
#
#    i = 0
#   while i < words.length
#        reversed_words = words[i].split(" ") + reversed_words
#        i += 1
#    end
#
#    reversed_words.join(' ')
#end
#
#p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
#
#
#
#cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
#
#deck = { :hearts   => cards.clone,
#    :diamonds => cards.clone,
#    :clubs    => cards.clone,
#    :spades   => cards.clone }
#
#def score(card)
#    case card
#        when :ace   then 11
#        when :king  then 10
#        when :queen then 10
#        when :jack  then 10
#        else card
#    end
#end
#
# Pick one random card per suit
#
#player_cards = []
#deck.keys.each do |suit|
#    cards = deck[suit]
#   cards.shuffle!
#    player_cards << cards.pop
#end
#
# Determine the score of the remaining cards in the deck
#
#sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#    scores = remaining_cards.map do |card|
#        score(card)
#    end
#
#    sum += scores.sum
#end
#
#def move(n, from_array, to_array)
#    return if n == 0
#    to_array << from_array.shift
#    move(n - 1, from_array, to_array)
#end
#
# Example
#
#todo = ['study', 'walk the dog', 'coffee with Tom']
#done = ['apply sunscreen', 'go to the beach']
#
#move(2, todo, done)
#
#p todo # should be: ['coffee with Tom']
#p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']


#def neutralize(sentence)
#    words = sentence.split(' ')
#    new_sentence = []
#    words.each do |word|
#      if negative(word) == false
#        new_sentence << word
#      end
#    end
#
#    new_sentence.join(' ')
#end
#
#def negative(word)
#    [ 'dull',
#    'boring',
#    'annoying',
#    'chaotic'
#    ].include?(word)
#end
#
#puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

#password = nil
#
#def set_password
#    puts 'What would you like your password to be?'
#    new_password = gets.chomp
#   return new_password
#end
#
#def verify_password(x)
#    puts '** Login **'
#    print 'Password: '
#    input = gets.chomp
#
#    if input == x
#        puts 'Welcome to the inside!'
#        else
#        puts 'Authentication failed.'
#    end
#end
#
#if !password
# password = set_password
#end
#
#verify_password(password)

#def valid_integer?(string)
#   string.to_i.to_s == string
#end
#
#def guess_number(max_number, max_attempts)
#    winning_number = rand(1..max_number)
#    attempts = 0
#    guess = nil
#
#   until attempts > max_attempts || guess == winning_number
#    loop do
#
#        input = nil
#        until valid_integer?(input)
#          puts "you have #{max_attempts - attempts} left"
#          print 'Make a guess: '
#          input = gets.chomp
#        end
#
#        guess = input.to_i
#
#        if guess == winning_number
#          puts 'Yes! You win.'
#          break
#        else
#          puts 'Nope. Too small.' if guess < winning_number
#          puts 'Nope. Too big.'   if guess > winning_number
#
#
#        end
#
#        attempts += 1
#
#     end
#    end
#    # Try again:
#    sleep(1)
#    puts "Play Again?"
#    guess_number(max_number, max_attempts)
#end
#
#guess_number(10, 3)





def tfidf(term, document, documents)
    tf(term, document) * idf(term, documents)
end



def tf(term, document)
  document.split(/[\s-]/).count { |word| word.downcase == term }
end



def idf(term, documents)
    number_of_documents = documents.size
    
    number_of_documents_with_term = 0
    
    documents.each do |d|
      if tf(term, d) > 0
        number_of_documents_with_term += 1
      end
    end
    Math.log(number_of_documents.to_f / number_of_documents_with_term.to_f)
end



document1 = "Schrödinger's cat is a thought experiment often featured in discussions of the interpretation of quantum mechanics. The Austrian physicist Erwin Schrödinger devised it in 1935 as an argument against the Copenhagen interpretation of quantum mechanics, which states that an object in a physical system can simultaneously exist in all possible configurations, a state called quantum superposition, and only observing the system forces the object into just one of those possible states. Schrödinger disagreed with this interpretation. In particular, quantum superposition could not work with larger objects. As an illustration, he presented a scenario with a cat in a sealed box, whose fate was linked to a subatomic event that may or may not occur. In a quantum superposed state of the subatomic particles, the cat would be both alive and dead, until someone opened the box and observed it."

document2 = "The domestic cat is a small, furry, carnivorous mammal. The term cat can, however, also refer to wild cats, which include animals like lions, tigers and leopards. Cats are claimed to have a lower social IQ than dogs but can solve more difficult cognitive problems and have a longer-term memory. International Cat Day is celebrated on August 8. Famous cats include Schrödinger's cat as well as Pudding and Butterscotch, which occur in some of the Launch School assignments."

document3 = "One of the core values that sets Launch School apart from some other coding schools out there is our emphasis on Mastery-based Learning. If the key to becoming a competent and confident Software Engineer is deep understanding of first principles, then the key to acquiring that understanding is through Mastery-based Learning. The core of Mastery-based Learning is replacing time with mastery. There's no graduation, but a continual learning journey of micro-improvements. At Launch School, we're not trying to catch a wave or take advantage of a surge in demand. Instead, we're trying to focus on things that'll be useful to you for decades to come, such as a systematic problem-solving approach or learning how to deconstruct a programming language or building sound mental representations of how web application work. Everything we're trying to do at Launch School is with an eye towards sustainable studying habits and building skills for a long-term career."

documents = [document1, document2, document3]

# The higher the tf-idf score of a term for a document, the more informative
# it is for that document.
# E.g. when someone searches for the term 'cat' in your document collection,
# you want to return document1 and document2, but not document3.
# For the term 'quantum mechanics', on the other hand, you only want to return document1.

# expected outputs:
puts tfidf("cat", document1, documents) # ~ 1.2
puts tfidf("cat", document2, documents) # ~ 1.6
puts tfidf("cat", document3, documents) # 0

puts tfidf("quantum", document1, documents) # ~ 5.5
puts tfidf("quantum", document2, documents) # 0
puts tfidf("quantum", document3, documents) # 0

puts tfidf("mastery", document1, documents) # 0
puts tfidf("mastery", document2, documents) # 0
puts tfidf("mastery", document3, documents) # ~ 3.3

puts tfidf("some", document1, documents) # 0
puts tfidf("some", document2, documents) # ~ 0.4
puts tfidf("some", document3, documents) # ~ 0.4


arr = ["9", "8", "7", "10", "11"]
new = arr.sort do |x, y|
    y.to_i <=> x.to_i
end
p new
































