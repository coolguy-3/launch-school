class Pet
  attr_reader :animal, :name
  
  def initialize(animal, name)
    @animal = animal
    @name = name
  end
end

class Owner
  attr_reader :name
  
  def initialize owner_name
    @name = owner_name
    @owner_pets = []
  end
  
  def owner_pets=(pet)
    @owner_pets << pet
  end
  
  def number_of_pets
    @owner_pets.size
  end
end

class Shelter
  def initialize
    @owner_hash = {}
  end
  
  def adopt(owner, pet)
    @owner = owner
    @pet = pet
    @owner.owner_pets = @pet
    if @owner_hash[@owner]
      @owner_hash[@owner] << @pet
    else
      @owner_hash[@owner] = [@pet]
    end
  end
  
  def print_adoptions
    @owner_hash.each do |owner, pets|
      puts "#{owner.name} adopted the following pets:"
      pets.each do |pet|
        puts "a #{pet.animal} named #{pet.name}"
      end
      puts ''
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."