LOWERCASE_LETTERS = ('a'..'z').to_a + ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a + ('A'..'Z').to_a

def rot13(string)
  array = string.chars
  index_counter = 0
  array.each do |char|
    if char.upcase == char
      UPPERCASE_LETTERS.each_with_index do |letter, index|
        if letter == char
          array[index_counter] = UPPERCASE_LETTERS[index + 13]
          break
        end
      end
    elsif char.upcase != char
      LOWERCASE_LETTERS.each_with_index do |letter, index|
        if letter == char
          array[index_counter] = LOWERCASE_LETTERS[index + 13]
          break
        end
      end
    end
    index_counter += 1
  end
    puts array.join
end

rot13('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')