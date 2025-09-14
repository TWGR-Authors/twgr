module M
end

class C
  include M
  puts "Ancestors after including M:"
  p ancestors

  include M
  puts "Ancestors after including M again:" 
  p ancestors
  
  prepend M
  puts "Ancestors after prepending M:" 
  p ancestors
end

