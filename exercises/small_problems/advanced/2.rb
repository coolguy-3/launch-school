def star(n)
  
  indent_counter = 0
  space_counter = ((n-3)/2)
  
  ((n-1)/2).times do
    indent_counter.times do
      print ' '
    end
    2.times do
      print '*'
      print ' ' * space_counter
    end
    puts '*'
    indent_counter += 1
    space_counter -= 1
  end
  
  puts '*' * n
  
  indent_counter -= 1
  space_counter += 1
  
  ((n-1)/2).times do
      indent_counter.times do
          print ' '
      end
      2.times do
          print '*'
          print ' ' * space_counter
      end
      puts '*'
      indent_counter -= 1
      space_counter += 1
  end
end 

star(7)
