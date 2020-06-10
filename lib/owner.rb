class Owner
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @pets = []
  end
  
  def pets
    @pets
  end
  
  def buy_dog(dog)
    dog = Dog.new
    @pets << dog
    dog.owner = self unless dog.owner == self
  end
  
  def buy_cat(cat)
    cat = Cat.new
    @pets << cat
    cat.owner = self unless cat.owner == self
  end
  
  def walk_dogs
    pets.dog.all.mood = ""
  end
  
  def feed_cats
    
  end
  
  def sell_pets
    
  end
  
end