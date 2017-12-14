require_relative "card"

class Deck
  attr_reader :deck

  def initialize
    @deck = []
    (1..13).each do |num|
      [:d, :c, :h, :s].each do |suit|
        @deck << Card.new(num, suit)
      end
    end
  end

  def shuffle
    @deck = @deck.shuffle
  end

  def deal(player)
    player.hand << @deck.pop
  end

end
