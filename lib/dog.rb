class Dog
  attr_accessor :mood, :species
  attr_reader :name
  @@dogs = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @species = dog
    @@dogs << self
  end
  
  def owner=(owner)
    @owner = owner
    owner.buy_dog(self) unless owner.pets.include?(self)
  end

end