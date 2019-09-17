class Cat
  COLOR = 'purple'
  
  def initialize name
    @name = name
  end
  
  def greet
    puts "My name is #{@name}, I am #{COLOR}."
  end
end

meowmeow = Cat.new 'MeowMeow'
meowmeow.greet
