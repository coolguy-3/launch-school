def select_letter(string, letter)
    count = 0
    letter_string = ''
    
    loop do
      break if count == string.size
      current_letter = string[count]
      if current_letter == letter
        letter_string << letter
      end
      
      count += 1
    end
  
  letter_string
end


question = "how many times does a particlular character appear in this string?"
puts select_letter(question, 'a').size


alphabet = 'abcdefghijklmnjjjjopqrstuvwxyz'

for x in alphabet.chars
    if x == 'j'
      puts 'j'
    end
end