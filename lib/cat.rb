class Cat
  attr_accessor :mood, :species
  attr_reader :name
  @@cats = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @species = cat
    @@cats << self
  end
  
  def owner=(owner)
    @owner = owner
    owner.buy_cat(self) unless owner.pets.include?(self)
  end

end