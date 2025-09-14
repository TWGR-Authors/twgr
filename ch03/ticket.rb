class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]

  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end

  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
end

puts Ticket::VENUES

th = Ticket.new("Town Hall","2025-11-12")
cc = Ticket.new("Convention Center","2025-12-13")
fg = Ticket.new("Fairgrounds", "2025-10-11")
th.price = 12.55
cc.price = 10.00
fg.price = 18.00
highest = Ticket.most_expensive(th,cc,fg)
puts "The highest-priced ticket is the one for #{highest.venue}."
