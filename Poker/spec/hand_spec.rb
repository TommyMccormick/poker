require 'hand'
require 'rspec'


describe "Hand" do
  subject(:hand) { Hand.new("Steven") }
  describe "#initialize" do
    it "initizalizes empty hand" do
      expect(hand.hand).to eq([])
    end
    it "sets player" do
      expect(hand.player).to eq("Steven")
    end
  end

  describe "#hand_rankings" do
    let(:hand2) { Hand.new("Tommy") }
    it "returns best hand" do
        hand.ranking = 5
        hand2.ranking = 6
        expect(hand.hand_rankings(hand, hand2)).to eq("Tommy")
    end
  end
end
