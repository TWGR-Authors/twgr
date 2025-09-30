class Person
  attr_accessor :name, :age
  def initialize(name)
    @name = name
  end
end
bob = Person.new("Bob")
bob.age = 50
p bob.instance_variables
