class List
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def appends(data)
    node = Node.new(data)
    if head.nil?
      @head = node
    else
      current_node = head
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node.next_node = node
    end
  end

  def append(data)
    node = Node.new(data)
    if head.nil?
      @head = node
    else
      current_node = head
      searcher(current_node, data)
    end
  end

  def searcher(current_node, data)
    if current_node.next_node
      searcher(current_node.next_node, data)
    else
      current_node.next_node = Node.new(data)
    end
  end

  def count
    if head.nil?
      0
    else
      count = 1
      current_node = head
      while current_node.next_node
        current_node = current_node.next_node
        count += 1
      end
      return count
    end
  end

  def tail
    if head.nil?
      return nil
    else
      current_node = head
      while current_node.next_node
        current_node = current_node.next_node
      end
      return current_node
    end
  end

  def pop
    if head.nil?
      return nil
    else
      current_node = head
      while current_node.next_node.next_node
        current_node = current_node.next_node
      end
      value = current_node.next_node.data
      current_node.next_node = nil
    end
    return value
  end
end

class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(data, next_node=nil)
    @data = data
    @next_node = next_node
  end
end
