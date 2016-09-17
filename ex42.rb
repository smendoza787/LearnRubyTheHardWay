## Animal is-a object
class Animal
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## ?? What is this strange magic?
    super(name)
    ## employee has-a salary
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a fish
class Salmon < Fish
  def initialize(color)
    @color = color
  end
end

## Halibut is-a fish
class Halibut < Fish

  def initialize(name)
    ## Halibut has-a name
    @name = name

    ## Halibut has-a set of gils
    @gils = nil
  end

  attr_accessor :gils
end


# rover is-a Dog
rover = Dog.new("Rover")

## satan is-a cat
satan = Cat.new("Satan")

## mary is-a person
mary = Person.new("Mary")

## satan is-a pet of mary's
mary.pet = satan

##
frank = Employee.new("Frank", 120000)

## rover is-a pet of franks
frank.pet = rover

## flipper is-a fish
flipper = Fish.new()

## crouse is-a salmon
crouse = Salmon.new("pink")

## harry is-a halibut
harry = Halibut.new("Harry")

harry.gils = 2
