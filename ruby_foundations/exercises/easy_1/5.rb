class Array
  def any?
    counter = 0
    return_value = false
    until counter == self.size
      if yield(self[counter]) == true
        return_value = true
        break
      end
      counter += 1
    end
    return_value
  end
end

puts [1, 3, 5, 6].any? { |value| value.even? } == true
puts [1, 3, 5, 7].any? { |value| value.even? } == false
puts [2, 4, 6, 8].any? { |value| value.odd? } == false
puts [1, 3, 5, 7].any? { |value| value % 5 == 0 } == true
puts [1, 3, 5, 7].any? { |value| true } == true
puts [1, 3, 5, 7].any? { |value| false } == false
puts [].any? { |value| true } == false