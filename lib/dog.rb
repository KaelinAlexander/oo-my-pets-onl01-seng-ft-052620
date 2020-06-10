class Dog
  attr_accessor :owner, :mood, :species
  attr_reader :name
  @@dogs = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    owner.buy_dog(self) unless owner.pets.include?(self)
    @mood = "nervous"
    @species = dog
    @@dogs << self
  end
  
  def all
    @@dogs
  end

end