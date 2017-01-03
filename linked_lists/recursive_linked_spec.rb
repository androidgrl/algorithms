require 'minitest/autorun'
require 'minitest/pride'
require_relative 'recursive_linked_2'

class NodeTest < Minitest::Test
  attr_reader :node

  def setup
    @node = Node.new(10)
  end

  def test_it_has_data
    assert_equal 10, node.data
  end

  def test_it_appends_a_node
    node.append(2)
    assert_equal 2, node.next_node.data
  end

  def test_it_appends_many_nodes
    node.append(2).append(3)
    assert_equal 3, node.next_node.next_node.data
  end

  def test_it_counts_number_of_following_nodes
    node.append(2).append(3)
    assert_equal 3, node.count
  end

  def test_it_returns_a_tail_node
    node.append(2).append(3)
    assert_equal 3, node.tail.data
  end

  def test_it_pops_the_last_node_data
    skip
    node.append(2).append(3)
    assert_equal 3, node.count
    assert_equal 3, node.pop
    assert_equal 2, node.count
  end
end

