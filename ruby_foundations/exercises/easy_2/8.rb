def max_by(array)
  counter = 0
  max_value = nil
  return_value = nil
  until counter == array.size
    if max_value == nil || yield(array[counter]) > max_value
      max_value = yield(array[counter])
      return_value = array[counter]
    end
    counter += 1
  end
  return_value
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil