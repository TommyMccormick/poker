require 'deck'
require 'rspec'

describe "Deck" do
  subject(:deck) { Deck.new() }

  describe "#initialize" do
    it "creates 52 card deck" do
      expect(deck.deck.length).to eq(52)
    end
    it "creates 13 cards per suit" do
      suits = Hash.new(0)
      deck.deck.each do |card|
        suits[card.suit] += 1
      end
      expect(suits).to eq({ d: 13, c: 13, h: 13, s: 13 })
    end
  end

  describe "#shuffle" do
    it "shuffles" do
      original = deck.deck#.dup
      deck.shuffle
      expect(original).to_not eq(deck.deck)
    end
  end

  describe "#deal" do
    let(:player) { double("player", hand: []) }

    it "deals to player's hand" do
      expect(player).to receive(:hand)
      deck.deal(player)
    end
    it "adds a card to player's hand" do
      deck.deal(player)
      expect(player.hand).to_not be_empty
    end
  end
end
