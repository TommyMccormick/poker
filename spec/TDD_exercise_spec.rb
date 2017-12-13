require 'TDD_exercise'
require 'rspec'

describe "Remove dups" do
  subject(:array) { [1, 2, 1, 3, 3] }

  describe "#my_uniq" do
    it "return uniq elements" do
      expect(my_uniq(array)).to eq([1,2,3])
    end
  end
end

describe "Two sum" do
  subject(:array) { [-1, 0, 2, -2, 1] }

  describe "Array#two_sum" do
    it "returns array of sum zero" do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end

describe "My Transpose" do
  subject(:array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

  describe "#my_transpose" do
    it "transposes array" do
      expect(my_transpose(array)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end
end

describe "Stock Picker" do
  subject(:prices) { [1, 3, 2, 6, 4] }

  describe "#stock_prices" do
    it "return most profitable pair of days" do
      expect(stock_prices(prices)).to eq([0, 3])
    end
  end
end
