def make_counter(x = 1)
  n = 0 
  return Proc.new { n += x }       #1 
end 
c = make_counter(5)      #2 
puts c.call 
puts c.call 
d = make_counter     #3 
puts d.call 
puts c.call      #4 
