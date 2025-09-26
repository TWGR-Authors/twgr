module Shout 
  def shout 
    self.upcase + "!!!" 
  end 
end 

module ApplyShoutToString
  refine String do
    import_methods Shout
  end
end

class Person 
  attr_accessor :name 

  using ApplyShoutToString
  def announce 
    puts "Announcing #{name.shout}" 
  end 
end 
david = Person.new 
david.name = "David" 
david.announce   
