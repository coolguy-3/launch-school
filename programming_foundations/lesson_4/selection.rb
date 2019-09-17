alphabet = 'abcdefhigjklmnopqrstgguvwxyz'
howmanyg = 0
counter = 0

loop do
  current_chars = alphabet[counter]
  if current_chars == 'g'
    howmanyg += 1
  end
    counter += 1
    break if counter == alphabet.size
end

def select_fruit(hash)
  keys = hash.keys
  fruit = {}
  counter = 0
  
  loop do
    current_k = keys[counter]
    current_v = hash[current_k]
    if current_v == 'Fruit'
      fruit[current_k] = current_v
    end
      
      
    counter += 1
    break if counter == hash.size
  end
  
  puts fruit
end

produce = {
    'apple' => 'Fruit',
    'carrot' => 'Vegetable',
    'pear' => 'Fruit',
    'broccoli' => 'Vegetable'
}

select_fruit(produce)