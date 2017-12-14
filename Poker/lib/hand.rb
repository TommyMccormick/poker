class Hand
  attr_accessor :hand, :player, :ranking

  RANKS = {
    royal_flush: 10,
    straight_flush: 9,
    four_kind: 8,
    full_house: 7,
    flush: 6,
    straight: 5,
    three_kind: 4,
    two_pair: 3,
    pair: 2,
    high_card: 1
  }

  def initialize(player)
    @player = player
    @hand = []
    @ranking = 0
  end

  def hand_rankings(*hands)
    highest_hand = hands[0]
    hands[1..-1].each do |hand|
      highest_hand = hand if hand.ranking > highest_hand.ranking
    end
    highest_hand.player
  end
end
