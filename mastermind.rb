require_relative 'decoding_board'
require_relative 'computer_player'
require_relative 'human_player'


@decoding_board = DecodingBoard.new()
@computer_player = ComputerPlayer.new()
@human_player = HumanPlayer.new()
@human_player.turn = 0

puts "------------------------------------------------------------------------------------------------"
puts
puts
puts
puts
puts "Welcome to Mastermind." 
puts "Your computer opponent will generate 4 random colours out of a possible 6"
puts "Your task is to guess the correct colour and position of all four colours within 12 guesses"

@decoding_board.display_board

@computer_player.generate_code


puts "The computer has generated a random code, please enter your first guess (numbers 1 to 6, seperated by a space i.e; ""1 2 3 4"") and take note of the"
puts "hints provided by the scoring pegs."

@human_player.get_guess

puts "---------------------------------------------"

puts "Thank you"
puts "Let's put that on the board and see how you did: "


@decoding_board.insert_player_guess(@human_player.turn, @human_player.guess)

@decoding_board.check_if_exact_position(@computer_player.secret_code, @human_player.guess, @human_player.turn)

@decoding_board.check_if_contains_colour(@computer_player.secret_code, @human_player.guess, @human_player.turn)

@decoding_board.display_board

until @decoding_board.winning_conditions?(@human_player.turn)

  puts 
  @human_player.turn += 1

  @human_player.get_guess
  @decoding_board.insert_player_guess(@human_player.turn, @human_player.guess)
  @decoding_board.check_if_exact_position(@computer_player.secret_code, @human_player.guess, @human_player.turn)
  @decoding_board.check_if_contains_colour(@computer_player.secret_code, @human_player.guess, @human_player.turn)
  @decoding_board.display_board

  puts "---------------------------------------------"

end


# player guess is placed in applicable row
# player guess is compared to computers guess
# player receives feedback via the scoring pegs
# game continues until feedback all exact or board full and not all exact