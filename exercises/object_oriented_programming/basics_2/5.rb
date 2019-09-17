class Cat
  @@cat_counter = 0
  
  def initialize
    @@cat_counter += 1
  end
  
  def self.total
    puts @@cat_counter
  end
end

cat_1 = Cat.new
Cat.new
Cat.new
Cat.total