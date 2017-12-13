class TowersOfHanoi
  attr_reader :size
  attr_accessor :towers

  def initialize(size)
    @size = size
    @towers = Array.new(3) { [] }
    @starting_tower = (1..size).to_a.reverse
    @towers[0] = @starting_tower
  end

  def move(from, to)
    unless @towers[to] == []
      if @towers[to][-1] < @towers[from][-1]
        raise "Invalid move"
      end
    end
    @towers[to] << @towers[from].pop
  end

  def won?
    @towers[1] == @starting_tower || @towers[2] == @starting_tower
  end
end
