require "pry"

class Owner

  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end
 
  def species
    @species = "human"
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats

   Cat.all.select {|c| c.owner == self} #returns collection of all cats by their owner == to the owner

  end

  def dogs

    Dog.all.select {|d| d.owner == self}

  end

  def buy_cat(name) #takes an argument of the cat
    # binding.pry
     Cat.new(name,self) #initializes a new cat with it's name and owner (self)

  end

  def buy_dog(name)
    Dog.new(name,self)
  end

  def walk_dogs #method to walk llthe dogs
    Dog.all.each do |dog| #go through all the dogs in the Dog class
      if dog.owner == self #if the dog.owner is the same as the Owner class initiated
        dog.mood = "happy" #the dog's mood i shappy
      end
    end
   end

   def feed_cats
    Cat.all.each do |cat|
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end

  def sell_pets
    all_pets = self.cats + self.dogs #add all the cats and dogs together of the owners
      all_pets.each do |pet| #got hrough each oett
        pet.mood = "nervous" #chane mood to nervous
        pet.owner = nil #then makes the owner nil
      end
  end

  def list_pets

    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."

  end


end