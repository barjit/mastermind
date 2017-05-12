require_relative 'decoding_board'
require_relative 'computer_player'
require_relative 'human_player'


@decoding_board = DecodingBoard.new()
@computer_player = ComputerPlayer.new()
@human_player = HumanPlayer.new()


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

# puts "--------"
# puts @computer_player.secret_code
# puts "--------"


puts "The computer has generated a random code, please enter your first guess and take note of the"
puts "hints provided by the scoring pegs."

@decoding_board.get_input

puts "---------------------------------------------"

puts "Thank you"
puts "Let's put that on the board and see how you did: "

# player guess is placed in applicable row
# player guess is compared to computers guess
# player receives feedback via the scoring pegs
# game continues until feedback all exact or board full and not all exact