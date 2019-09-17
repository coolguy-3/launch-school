arr = ['10', '11', '9', '7', '8']
b = arr.sort do |a, b|
  b.to_i <=> a.to_i
end


books = [
{title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
{title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
{title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
{title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by! do |hash|
  hash[:published]
end
    
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

hsh2[:third].key(0)



arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4


munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

males = munsters.keep_if do |key, value|
  value["gender"] == "male"
end

sum = 0

males.each do |hash, value|
  sum += value["age"]
end

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each do |key, value|
  "#{key} is a #{value['age']}-year-old #{value['gender']}."
end


hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = %w( a e i o u A E I O U )

hash_vowels = []

hsh.each do |x, y|
  y.each do |word|
    word.split("").each do |char|
      if VOWELS.include? char
        hash_vowels << char
      end
    end
  end
end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
arr.each do |sub|
  sub.sort! do |a, b|
    b <=> a
  end
end

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
    incremented_hash = {}
    hsh.each do |key, value|
        incremented_hash[key] = value + 1
    end
    incremented_hash
end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map! do |x|
  x.select do |each|
    each % 3 == 0
  end
end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

new = {}

arr.each do |item|
  new[item[0]] = item[1]
end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by! do |sub|
  sub.select do |num|
    num.odd?
  end
end

hsh = {
    'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
    'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
    'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
    'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
    'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

array = hsh.map do |key, value|
  if value[:type] == 'fruit'
    value[:colors]
  else
  value[:size].upcase
  end
end


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select! do |hash|
  hash.all? do |key, value|
    value.all? do |num|
      num.even?
    end
  end
end





def rand_char
  x = "abcdefghijklmnopqrstuvwxyz0123456789"
  x[rand(36)]
end

def append(string, num)
  num.times do
    string += rand_char
  end
  string += '-'
  string
end

def uuid
  
  final = ''

  final = append(final, 8)
  final = append(final, 4)
  final = append(final, 4)
  final = append(final, 4)
  (12).times do
    final += rand_char
  end

  final
end
  
puts uuid
  
  
  
  
  
  
  
  
  
  
  
  












