#teddy_age = rand(20..200)
#"Teddy is #{teddy_age} years old!"

#print "Enter the length of the room in meters: "
#length = gets.chomp.to_f
#print "Enter the width of the room in meters: "
#width = gets.chomp.to_f

#square_meters = length * width
#square_feet = square_meters * 10.7639
#puts "The area of the room is #{square_meters} (#{square_feet} square feet)."

#print "What is the bill? "
#bill = gets.chomp.to_f
#print "What is the tip percentage? "
#tip_perc = gets.chomp.to_f
#puts ""
#tip = bill * (tip_perc / 100)
#puts "The tip is $#{tip}"
#puts "The total is $#{bill + tip}"

#print "What is your age? "
#age = gets.chomp.to_i
#print "At what age would you like to retire? "
#retire_age = gets.chomp.to_i
#puts ""
#year = Time.now.year
#how_many = retire_age - age
#puts "It's #{year}. You will retire in #{year + how_many}."
#puts "You only have #{how_many} years of work to go!"

#print "What is you name? "
#name = gets.chomp
#if name.split("").include? "!"
#yell_name = name.split("")
#yell_name.pop
#yell_name = yell_name.join.upcase
#puts "HELLO #{yell_name}. WHY ARE WE SCREAMING?"
#else
#puts "Hello #{name}."
#end

#print 'What is your name? '
#name = gets.chomp

#if name[-1] == '!'
#    name = name.chop
#    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
#    else
#    puts "Hello #{name}."
#end

#for n in (1..99)
#  if n.odd?
#    puts n
#  end
#end

#print "> Please enter an integer greater than 0: "
#int = nil
#
#loop do
#  int = gets.chomp.to_i
#  if int.is_a?(Integer) && int > 0
#    break
#  else
#    print "> Please enter a valid Integer greater than 0: "
#  end
#end
#
#print "> Enter 's' to compute the sum, 'p' to compute the product: "
#s_or_p = nil
#
#loop do
#    s_or_p = gets.chomp.downcase
#    if s_or_p == 's' || s_or_p == 'p'
#        break
#        else
#        print "> Please enter s or p: "
#    end
#end
#
#if s_or_p == 's'
#  sum = 0
#  for number in (1..int)
#    sum += number
#  end
#  puts sum
#else
#  product = 1
#  for number in (1..int)
#    product *= number
#  end
#  puts product
#end


























