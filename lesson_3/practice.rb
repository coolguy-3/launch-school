advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice.split
advice[6] = "urgent"
puts advice.join(" ")

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.gsub!('important', 'urgent')

puts advice

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # selects location within array
numbers.delete(1)    # selects specified parameter

# both of these are destructive without !

if 42 > 10 && 42 < 100
  puts "true"
else
  puts "false"
end

if (10..100).cover?(42)
  puts "true"
else
  puts "false"
end

famous_words = "seven years ago..."
new_words = "Four score and "
famous_words = new_words << famous_words
puts famous_words

words = "seven years ago..."
words = words.split(" ").insert(0, "Four score and")
puts words.join(" ")

famous = "seven years ago..."

puts famous.prepend("Four score and ")

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
puts flintstones

stones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
stones.assoc("Barney")

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
if ages.include?("Spot") #hash.member? would also work
  puts "ya"
else
  puts "no"
end

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

if ages.include?("Spot") 
    puts "ya"
    else
    puts "no"
end

ages.key?("Spot")

munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

#"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
#"The munsters are creepy in a good way."
#"the munsters are creepy in a good way."
#"THE MUNSTERS ARE CREEPY IN A GOOD WAY."


adv = "Few things in life are as important as house training your pet dinosaur."
if adv.split.include?("dinosaur.")
  puts "hi"
else
  puts "bye"
end

#or

adv.match?("Dino")

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# =
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"
#^could also use array.concat or array.push

flintstones.concat(%w(Hoppy Josh))
#concat adds array rather than one item

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice!("house training your pet dinosaur")
puts advice

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice(0, advice.index('house'))



statement = "The Flintstones Rock t t t t  t t  t!"
count = 0
statement.split("").each do |x|
  if x == "t"
    count += 1
  end
end
puts "there are #{count} t's"

#or

statement.count('t')

#lol damn

title = "Flintstone Family Members"
puts title.center(50)




















