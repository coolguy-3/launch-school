def Loading(x)
  print "Loading"
  sleep(1)
  x.times do
    print "."
    sleep(1)
  end
  puts ""
end

loan_amount = nil
apr = nil
duration = nil
mp = nil
gt = nil

puts "Welcome to the Car Loan Calculator! Please answer the following questions to recieve your consultation."

sleep(1)

loop do
  print "First, enter the loan amount: "
  loan_amount = gets.chomp
  if loan_amount.to_i.zero?
    puts "Please enter a valid number!"
  else
    loan_amount = loan_amount.to_f
    break
  end
end

loop do
  print "Next, enter the annual interest rate(%): "
  apr = gets.chomp
  if apr.to_i.zero?
    puts "Please enter a valid number!"
  else
    apr = apr.to_f
    apr = apr / 100
    apr = apr / 12
    break
  end
end

loop do
  print "Finally, in months, enter the duration of the loan: "
  duration = gets.chomp
  if duration.to_i.zero?
    puts "Please enter a valid number!"
  else
    duration = duration.to_i
    break
  end
end

Loading(3)

mp = loan_amount *
      (apr /
      (1 - (1 + apr)**(-duration)))

gt = duration * mp

puts "Your monthly payment comes to $#{mp}, with a grand total of $#{gt} over the span of $#{duration} months."