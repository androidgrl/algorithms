require 'minitest/autorun'
require 'minitest/pride'
require_relative 'binary_search_tree'

class TreeTest < Minitest::Test
  attr_reader :tree

  def setup
    @tree = Tree.new
  end

  def test_it_pushes_a_node_when_there_are_none
    tree.push(1)
    assert_equal 1, tree.head.data
  end

  def test_it_pushes_a_node_smaller_than_head
    tree.push(2)
    tree.push(1)
    assert_equal 1, tree.head.left.data
  end
end
