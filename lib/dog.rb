require "pry"

class Dog

   attr_reader :name #cant change name
   attr_writer :owner #can change
   attr_accessor :mood #makes both reader and writer to set default and change
  
   @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous" #makes default
    @@all << self #adds all the instances into the empty array constant of @@all
  end

  def name
    @name
  end

  def owner
    @owner
  end

  def self.all
    @@all #calls it
  end

end