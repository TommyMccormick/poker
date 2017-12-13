def my_uniq(array)
  result = []
  array.each { |el| result << el unless result.include?(el) }
  result
end

class Array
  def two_sum
    pairs = []
    self.each_index do |i|
      self.each_index do |j|
        next if i >= j
        pairs << [i, j] if self[i] + self[j] == 0
      end
    end
    pairs
  end
end

def my_transpose(array)
  result = []
  array.each_index do |i|
    col = []
    array.each_index do |j|
      col << array[j][i]
    end
    result << col
  end
  result
end

def stock_prices(prices)
  result = Hash.new()

  prices.each_index do |i|
    prices.each_index do |j|
      next if i >= j
      result[[i, j]] = prices[j] - prices[i]

    end
  end
  result = result.sort_by { |k,v| v }
  result.last[0]
end
