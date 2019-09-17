class Cat
  attr_reader :name
    
  def initialize name
    @name = name
  end

  def to_s
    "I'm #{@name}"
  end
end

kitty = Cat.new "joe"
puts kitty