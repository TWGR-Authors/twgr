def method_1
  puts "In method 1"
  caller_locations
end

def method_2
  puts "In method 2"
  method_1
end

def method_3
  puts "In method 3"
  method_2
end

