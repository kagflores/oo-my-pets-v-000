require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  attr_writer
  @@all = []

  def initialize(species, name = nil)
    @species = species
    @name = name
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def pets
    @pets
  end

  def say_species
    say = "I am a #{species}."
    say
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].mood >> "happy"
    #binding.pry
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def sell_pets

    self.pets.clear
  end

  def self.reset_all
    self.all.clear
  end

end
