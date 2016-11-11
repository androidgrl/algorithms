class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data, left=nil, right=nil)
    @data = data
    @left = left
    @right = right
  end
end

class Tree
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def push(data)
    if head.nil?
      @head = Node.new(data)
    else
      searcher(head, data)
    end
  end

  def searcher(node, data)
    left = node.left
    right = node.right
    if data <= node.data
      if left.nil?
        node.left = Node.new(data)
      else
        next_node = left
        searcher(next_node, data)
      end
    else
      if right.nil?
        node.right = Node.new(data)
      else
        next_node = right
        searcher(next_node, data)
      end
    end
  end
end
