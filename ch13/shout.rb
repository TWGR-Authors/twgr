module Shout 
  refine String do
    def shout 
      self.upcase + "!!!" 
    end 
  end 
end 
class Person 
  attr_accessor :name 
  using Shout
  def announce 
    puts "Announcing #{name.shout}" 
  end 
end 
david = Person.new 
david.name = "David" 
david.announce   
