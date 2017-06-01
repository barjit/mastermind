require 'minitest/autorun'
require_relative '../computer_player.rb'

class ComputerPlayerTest < Minitest::Test
  def test_computer_player_can_generate_secret_code
    computer = ComputerPlayer.new

    computer.generate_code
    assert computer.secret_code
  end

  def test_secret_code_made_up_of_strings
    computer = ComputerPlayer.new

    computer.generate_code
    assert_equal([true, true, true, true], (computer.secret_code.map { |num| num.is_a? String }))
  end

end