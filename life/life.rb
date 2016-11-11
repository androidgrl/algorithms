class Game
  def board
    Board.new
  end
end

class Board
  def cells
    inside_array = []
    8.times do |x|
      inside_array << Cell.new
    end
    outside_array = []
    8.times do |y|
      outside_array << inside_array
    end
    outside_array
  end
end

class Cell
  attr_accessor :state

  def initialize
    @state = [*0,1].sample
  end

  def alive?
    state == 1
  end

  def kill
    @state = 'dead'
  end
end
