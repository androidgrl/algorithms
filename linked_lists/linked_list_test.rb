require 'minitest/autorun'
require 'minitest/pride'
require_relative 'linked_list'

class ListTest < Minitest::Test
  attr_reader :list

  def setup
    @list = List.new
  end

  def test_it_inserts_onto_the_head_when_the_head_is_nil
    list.append("Bob")
    assert_equal "Bob", list.head.data
  end

  def test_it_inserts_onto_a_head
    list.append("Bob")
    list.append("Jane")
    assert_equal "Jane", list.head.next_node.data
  end

  def test_it_can_count_number_of_nodes
    list.append("Bob")
    list.append("Jane")
    assert_equal 2, list.count
  end

  def test_it_returns_a_tail
    list.append("Bob")
    list.append("Jane")
    assert_equal "Jane", list.tail.data
  end

  def test_it_pops_the_last_node
    list.append("Bob")
    list.append("Jane")
    assert_equal 2, list.count
    assert_equal "Jane", list.pop
    assert_equal 1, list.count
  end
end
