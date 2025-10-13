class Die
  include Enumerable
  def each
    loop do
      yield rand(6) + 1
    end
  end
end

puts "Welcome to 'You Win If You Roll a 6!'"
die = Die.new
die.each do |roll|
  puts "You rolled a #{roll}"
  if roll == 6
    puts "You win!"
    break
  end
end
