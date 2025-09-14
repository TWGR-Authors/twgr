class Ticket 
  attr_reader :venue, :date, :price 
  attr_writer :price 
  def initialize(venue, date) 
    @venue = venue 
    @date = date 
  end 
end 
