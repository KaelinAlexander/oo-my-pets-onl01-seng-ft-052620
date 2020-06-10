class Owner
  attr_reader :name, :species

@@owners = []
@pets = []
@cats = []
@dogs = []
  
  def initialize(name)
    @name = name
    @pets = []
    @species = human
    @@owners << self
  end
  
  def say_species
    puts "I am a human."
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
  end
  
  def dogs
    @dogs
  end
  
  def buy_dog(dog)
    dog = Dog.new
    @pets << dog
    @dogs << dog
    dog.owner = self unless dog.owner == self
  end
  
  def buy_cat(cat)
    cat = Cat.new
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
    
  end
  
end