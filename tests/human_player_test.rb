require 'minitest/autorun'
require_relative '../human_player.rb'

class HumanPlayerTest < Minitest::Test
  
  def test_turn_initialized_as_zero
    human = HumanPlayer.new

    assert_equal(0, human.turn)
  end

  def test_guess_valid_returns_true_for_valid_guess
    human = HumanPlayer.new

    assert_equal(true, human.guess_valid?([1, 4, 3, 2]))
  end

  def test_guess_valid_returns_false_for_non_valid_guesses
    human = HumanPlayer.new

    assert_equal(false, human.guess_valid?([1, "12", "goat", "france"]))
    assert_equal(false, human.guess_valid?([1, -4, 12]))
    assert_equal(false, human.guess_valid?(%w{1 3 53 32 1}))
  end 
end