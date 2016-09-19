class Parent # this creates a parent class

  def override() # this creates the override function for the parent class
    puts "PARENT override()" # this will print out for the dad function, but will be overridden by the child
  end

  def implicit() # this creates the implicit function for the parent class, it will pring out the same for the child
    puts "PARENT implicit()"
  end

  def altered() # this create an altered function of the parent base class
    puts "PARENT altered()"
  end
end

class Child < Parent # this creates the child class which inherits everything from the parent class

  def override() # this created the override function for the child class, which overrides the function in the parent class
    puts "CHILD override()"
  end

  def altered() # this created the altered function in the child class which does override the parent function
    puts "CHILD, BEFORE PARENT altered()"
    super() # this function is calling the altered() function from the parent class and will output that here
    puts "CHILD, AFTER PARENT altered()" # this is part of the child function which is still overriding the parent class
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()
