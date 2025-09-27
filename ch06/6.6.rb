class Roster
  attr_accessor :players
end
class Player
  attr_accessor :name, :position
  def initialize(name, position)
    @name = name
    @position = position
  end
end
