require 'minitest/autorun'
require_relative '../decoding_board.rb'

class DecodingBoardTest < Minitest::Test
  
  def test_board_initialized_correctly
    decoding_board = DecodingBoard.new

    assert_equal(decoding_board.board.count, 12)
    assert_equal(decoding_board.board[0].count, 8)
  end

end