class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  @@dogs = []

  def initialize
    @name = name
    @owner = owner
    # owner.buy_dog(self) unless owner.pets.include?(self)
    @mood = "nervous"
    @@dogs << self
  end
  
  def all
    @@dogs
  end

end