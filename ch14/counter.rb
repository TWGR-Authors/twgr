def make_counter 
  n = 0 
  return Proc.new { n += 1 }       #1 
end 
c = make_counter      #2 
puts c.call 
puts c.call 
d = make_counter     #3 
puts d.call 
puts c.call      #4 
