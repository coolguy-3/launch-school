def repeat(x, y)
    y.times do puts x
    end
end

def is_odd(x)
    x % 2 == 1
end

def digit_list(x)
    array = []
    x.to_s.split("").each do |_|
        array << _.to_i
    end
    return array
end

def count_occurrences(x)
    hash = {}
    count = 0
    x.each do |w|
        if hash.keys.include? w
            hash[w] += 1
            else
            hash[w] = 1
        end
        count += 1
    end
    return hash
end


vehicles = [
'car', 'car', 'truck', 'car', 'SUV', 'truck',
'motorcycle', 'motorcycle', 'car', 'truck'
]

#couldve used array.count

def reverse(x)
    array = []
    array_2 = []
    count = 0
    x.split(" ").each do |word|
        array << word
    end
    array.each do |word|
        count += 1
    end
    count.times do
        array_2 << array.pop
    end
    return array_2.join(" ")
end


reverse("1 2 3 4 5 5 6 7 7")

def reverse_sentence(string)
    string.split.reverse.join(' ')
end


def reverse_words(string)
    new_string = []
    string.split(" ").each do |word|
        new_string << word.reverse!
    end
    new_string.join(" ")
end



def stringy(x)
    number_array = []
    loop do
        unless x.zero?
            number_array << 1
            x -= 1
        end
        break if x.zero?
        number_array << 0
        x -= 1
    end
    number_array.join
end



def average(array)
    sum = 0
    array.each do |numba|
        sum += numba
    end
    sum /= array.size
end

average([1, 5, 87, 45, 8, 8])
average([9, 47, 23, 95, 16, 52])

def sum(numbers)
    total = 0
    num_array = numbers.to_s.split("")
    num_array.each do |num|
        total += num.to_i
    end
    total
end


sum(23)
sum(496)
sum(123_456_789)


def calculate_bonus(salary, bonus)
    if bonus == true
        return salary /= 2
        else
        0
    end
end

calculate_bonus(2800, true)
calculate_bonus(1000, false)
calculate_bonus(50000, true)


def calculate_bonus_2(salary, bonus)
    bonus ? (salary / 2) : 0
end




