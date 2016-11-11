class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(data)
    @data = data
  end

  def append(d)
    if next_node
      next_node.append(d)
    else
      self.next_node = Node.new(d)
    end
  end

  def count
    if next_node
      return next_node.count + 1
    else
      return 1
    end
  end

  def tail
    if next_node
      return next_node.tail
    else
      return self
    end
  end

  def pop
    if next_node.next_node
      return next_node.pop
    else
      value = next_node.data
      self.next_node = nil
      return value
    end
  end
end
