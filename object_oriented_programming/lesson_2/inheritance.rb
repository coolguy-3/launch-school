class Dog
  def speak
    'bark!'
  end
  
  def fetch
    'fetching'
  end
  
  def swim
    'swimming'
  end
  
  def run
    'running'
  end
  
  def jump
    'jumping'
  end
end

class Cat < Dog
  def speak
    'meow'
  end
  
  def fetch
    'cats cant fetch'
  end
  
  def swim
    'cats dont swim'
  end
end

meowmeow = Cat.new
puts meowmeow.speak
puts meowmeow.jump

puts Cat.ancestors