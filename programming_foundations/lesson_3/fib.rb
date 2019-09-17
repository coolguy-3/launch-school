#limit = 15

def fib(first_num, second_num)
    limit =15
    while first_num + second_num < limit
        sum = first_num + second_num
        first_num = second_num
        second_num = sum
    end
    sum
end

result = fib(0, 1)
puts "result is #{result}"


a = 1

puts a.object_id
puts a.object_id

a = 2

puts a.object_id

a = 1

puts a.object_id

puts a.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id.object_id