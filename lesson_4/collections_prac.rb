flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
array = []

#create hash with array indices

flintstones.each_with_index do |key, value|
    array << [key, value]
    flintstones = array.to_h
end

#or

flintstones_hash = {}
flintstones.each_with_index do |name, index|
    flintstones_hash[name] = index
end

#add all ages

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total = 0

ages.values.each do |age|
  total += age
end

#or

total_ages = 0
ages.each { |_,age| total_ages += age }

#or

ages.values.inject(:+)

#remove anybody over 100
old = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

good, too_old = old.partition do |_, age|
  age < 100
end

#puts good.to_h

#or

ages.keep_if { |_, age| age < 100 } # or couldve used select method

minimum = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
minimum.delete(minimum.keys.min)

 minimum

#find index of words that start with Be
yes = %w(Fred Barney Wilma Betty BamBam Pebbles)
yes.each_with_index do |word, index|
  if word.split("").first(2) == ['B', 'e']
    index
  end
end

#or

yes.index { |name| name[0, 2] == "Be" }

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |words|
  words[0, 3]
end

statement = "The Flintstoneeeeeeees Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
    letter_frequency = statement.scan(letter).count
    result[letter] = letter_frequency if letter_frequency > 0
end


def titleize(string)
new_string = ""
string.split(" ").each do |word|
  string = new_string << word.to_s.capitalize! << " "
  end
  return string
end

sentence = "return capitalize this sentence "
titleize(sentence)

words = "hi there"
words.split.map { |word| word.capitalize }.join(' ')

people = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

people.each do |name, details|
    case details["age"]
        when 0...18
        details["age_group"] = "kid"
        when 18...65
        details["age_group"] = "adult"
        else
        details["age_group"] = "senior"
    end
end

puts people.to_a















