def hi(x)
  x.times do |number|
    puts (" " * number) + "hi"
  end
end

def factors(number)
    divisor = number
    factors = []
    begin
        while divisor > 0 do
        factors << number / divisor if number % divisor == 0
        divisor -= 1
        end
    end until divisor == 0
    factors
end

puts factors(0)