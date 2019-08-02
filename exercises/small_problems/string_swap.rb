def swap(string)
    new_array = []
    string.split(" ").each do |word|
        last_char = word.slice!(-1)      # <-- same method without string conversion returns no error
        first_char = word.slice!(0).to_s # <-- if first word is not converted to a string returns error?
        new_array << (word.prepend last_char << first_char)
    end
    puts new_array.join(" ")
end

swap('Oh what a wonderful day it is')
swap('Abcde')
swap('a')