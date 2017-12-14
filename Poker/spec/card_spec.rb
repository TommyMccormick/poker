require 'card'
require 'rspec'

describe "Card" do
  subject(:card) { Card.new(5, :h) }

  describe "#initialize" do
    it "sets the suit" do
      expect(card.suit).to eq(:h)
    end

    it "sets the number" do
      expect(card.number).to eq(5)
    end
  end



end
