obj = Object.new 
def obj.singleton_method_added(m) 
  puts "Singleton method #{m} was just defined." 
end 
def obj.a_new_singleton_method 
end 
