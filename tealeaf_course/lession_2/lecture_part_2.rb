#Constructors  构造函数



class Dog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def eat
    "#{name} is eating"
  end
end


class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def eat
    "#{name} is eating"
  end
end


dog = Dog.new("teddy")
puts dog.name
puts dog.eat

cat = Cat.new("kitty")
puts cat.name
puts cat.eat