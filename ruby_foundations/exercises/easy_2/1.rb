def step(start, final, step_by)
  value = start
  until value >= final
    yield value
    value += step_by
  end
  yield value
end

step(1, 10, 3) { |value| puts "value = #{value}" }