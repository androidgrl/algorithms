require_relative './life.rb'
require 'minitest/autorun'
require 'minitest/pride'

class GameTest < Minitest::Test
  def test_it_exists
    assert Game
  end

  def test_it_has_a_board
    assert_equal Board, Game.new.board.class
  end

  def test_board_has_cells
    cells = Board.new.cells
    assert_equal 8, cells.count
    assert_equal 8, cells.first.count
  end

  def test_cell_with_value_1_is_alive
    cell = Cell.new
    cell.state = 1
    assert_equal 1, cell.state
    assert_equal true, cell.alive?
  end

  def test_it_can_be_killed
    cell = Cell.new
    cell.kill
    assert_equal 'dead', cell.state
  end

  def test_it_starts_with_one_live_cell
    board = Board.new
    assert board.cells.first.first.alive?
  end
end
