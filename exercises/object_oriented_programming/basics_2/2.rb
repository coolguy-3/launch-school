class Cat
  attr_accessor :name

  def initialize name
    @name = name
  end
end

kitty = Cat.new "Sophie"
puts kitty.name
kitty.name = "Chloe"
puts kitty.name