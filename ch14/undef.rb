class C
  def talk
    puts "In superclass"
  end
  def shout
    puts "IN SUPERCLASS!!"
  end
end

class D < C
  def talk
    puts "In class"
  end
  
  def shout
    puts "IN CLASS!!"
  end

  remove_method :talk
  undef_method :shout
end

D.new.talk
D.new.shout
