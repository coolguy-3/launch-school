def fib(n)
  if n == 1
    1
  elsif n == 2
    1
  else
    fib(n-1) + fib(n-2)
  end
end

def find_fibonacci_index_by_length(number)
  counter = 0
  length = 0
  loop do
    counter += 1
    length = fib(counter).to_s.length
    break if length == number
  end
  puts counter
end

find_fibonacci_index_by_length(2)
find_fibonacci_index_by_length(5)
#find_fibonacci_index_by_length(9) <-- cannot run numbers larger than nine
#find_fibonacci_index_by_length(10)
#find_fibonacci_index_by_length(100)