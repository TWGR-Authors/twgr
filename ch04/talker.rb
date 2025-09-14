module Mod1 
  def talk 
    puts "Hi from Mod1!" 
  end 
end 
 
module Mod2 
  def talk 
    puts "Hi from Mod2!" 
  end 
end 
 
module Mod3 
  include Mod1 
  include Mod2 
end 
 
class Talker 
  include Mod3 
end 
 
Talker.new.talk 
