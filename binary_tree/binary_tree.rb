require 'pry'

class Node
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(d)
    case d <=> data
    when -1
      insert_left(d)
    when 1
      insert_right(d)
    else
      false
    end
  end

  def insert_left(d)
    if left
      left.insert(d)
    else
      @left = Node.new(d)
    end
  end

  def insert_right(d)
    if right
      right.insert(d)
    else
      @right = Node.new(d)
    end
  end

  def include?(d)
    case d <=> data
    when -1
      left_include?(d)
    when 1
      right_include?(d)
    when 0
      true
    end
  end

  def left_include?(d)
    if left
      left.include?(d)
    else
      false
    end
  end

  def right_include?(d)
    if right
      right.include?(d)
    else
      false
    end
  end
end
