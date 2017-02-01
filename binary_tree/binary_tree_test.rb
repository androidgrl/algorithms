require 'pry'
require_relative 'binary'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  attr_reader :node

  def setup
    @node = Node.new(10)
  end

  def test_it_has_data
    assert_equal 10, node.data
  end

  def test_it_inserts_to_the_left_of_head
    node.insert(2)
    assert_equal 2, node.left.data
  end

  def test_it_inserts_a_second_left
    node.insert(2).insert(1)
    assert_equal 1, node.left.left.data
  end

  def test_it_inserts_a_left_then_right
    node.insert(2).insert(3)
    assert_equal 3, node.left.right.data
  end

  def test_it_detects_the_head_value
    assert node.include?(10)
  end

  def test_it_detects_the_left_value
    node.insert(2)
    assert node.include?(2)
  end

  def test_it_returns_false_when_value_not_present
    refute node.include?(3)
  end

  def test_it_finds_a_value_down_the_tree
    node = Node.new(10)
    node.insert(5)
    node.insert(11)
    node.insert(3)
    node.insert(1)
    assert node.include?(1)
    refute node.include?(0)
    assert node.include?(11)
  end
end
