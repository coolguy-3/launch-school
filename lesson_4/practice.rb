str = "a string with spaces"
arr = str.split
# arr == ["a", "string", "with", "spaces"]
arr.join(" cool ")[0, 13]

def cap(x, y)
  x[y] = x[y].upcase
  return x
end
  

str2 = "what is goin on here"

str2 = cap(str2, 8)

puts str2


food_hash = { apple: 'produce', carrot: 'produce', cow: 'produce' }
food_hash[:apple] = 'fruit'
food_hash[:carrot] = 'vegetable'
food_hash[:cow] = 'meat'
puts food_hash
food_array = food_hash.to_a
puts food_array.to_s


