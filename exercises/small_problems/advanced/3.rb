def transpose(array)
counter = 0
new = []
  array.each do |row|
    column = array.map do |row|
      row[counter]
    end
    new << column
    counter += 1
  end
new
end

matrix = [
[1, 5, 8],
[4, 7, 2],
[3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]