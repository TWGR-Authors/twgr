class PlayingCard
  SUITS = %w(clubs diamonds hearts spades).cycle
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A).cycle
  class Deck
    attr_reader :cards
    def initialize(n=1)
      @cards = Enumerator.produce do
        "#{RANKS.next} of #{SUITS.next}"
      end.take(52 * n)
    end
  end
end
deck = PlayingCard::Deck.new(2)
p deck.cards.size

