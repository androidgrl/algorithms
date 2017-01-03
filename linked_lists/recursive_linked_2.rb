class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(data)
    @data = data
  end

  def append(data)
    if next_node
      next_node.append(data)
    else
      self.next_node = Node.new(data)
    end
  end

  def count
    counter = 0
    if next_node
      return next_node.count + 1
    else
      1
    end
  end

  def tail
    if next_node
      return next_node.tail
    else
      self
    end
  end
end
