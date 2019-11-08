def zip(a, b)
  c = []
  counter = 0
  until counter == a.size
    c[counter] = [a[counter], b[counter]]
    counter += 1
  end
  c
end

puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]