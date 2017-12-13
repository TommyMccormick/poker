require 'towers_of_hanoi'
require 'rspec'

describe "Towers of Hanoi" do
  subject(:game) { TowersOfHanoi.new(3) }
  describe "#initialize" do
    it "should set size" do
      expect(game.size).to eq(3)
    end
  end
  describe "#move" do
    before(:each) { game.move(0, 1)}
    it "raises error if invalid move" do
      expect { game.move(0, 1) }.to raise_error("Invalid move")
    end
    it "valid move!" do
      expect(game.towers[0]).to eq([3,2])
      expect(game.towers[1]).to eq([1])
    end
  end
  describe "#won?" do
    it "wins game" do
      game.towers = [[], [3, 2, 1], []]
      expect(game.won?).to eq(true)
    end
  end

end
