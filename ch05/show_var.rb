class C 
  def set_v 
    @v = "I am an instance variable and I belong to any instance of C."
  end 
  def show_var 
    puts @v 
  end 
  def self.set_v 
    @v = "I am an instance variable and I belong to C."
  end 
end 
C.set_v 
c = C.new 
c.set_v 
c.show_var 
