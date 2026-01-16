require_relative "stacklike"
class Suitcase
end
class CargoHold
  include Stacklike #1
  def load_and_report(obj) #2
    print "Loading object "
    puts obj.object_id
    add_to_stack(obj) #3
  end
  def unload
    take_from_stack #4
  end
end
ch = CargoHold.new #5
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)
first_unloaded = ch.unload
print "The first suitcase off the plane is...."
puts first_unloaded.object_id
