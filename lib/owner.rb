class Owner
  attr_reader :name, :species

@@owners = []

  def initialize(name)
    @name = name
    @pets = []
    @cats = []
    @dogs = []
    @species = "human"
    @@owners << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@owners
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    @@owners = []
  end
  
  def pets
    @pets
  end
  
  def cats
    @cats
    # cat.all.collect{|cat| cat.owner == self}
  end
  
  def dogs
    @dogs
  end
  
  def buy_dog(dog)
    dog = Dog.new(dog, self)
    @pets << dog
    @dogs << dog
    dog.owner = self unless dog.owner == self
  end
  
  def buy_cat(cat)
    cat = Cat.new(cat, self)
    @pets << cat
    @cats << cat
    cat.owner = self unless cat.owner == self
  end
  
  def walk_dogs
    dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    cats.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    pets.each{|pet| pet.mood = "nervous"}
    @pets = []
  end
  
end