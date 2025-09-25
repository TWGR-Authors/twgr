class Person
  attr_accessor :name

  def initialize(name, &block)
    @name = name
    @block = block
  end

  def to_proc
    @block
  end
end

d = Person.new("David") {|n| puts "hi from david" }
[1,2,3].map(&d)

