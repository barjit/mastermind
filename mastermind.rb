require_relative 'decoding_board'
require_relative 'computer_player'
require_relative 'human_player'

class Mastermind

  @decoding_board = DecodingBoard.new()
  @computer_player = ComputerPlayer.new()
  @human_player = HumanPlayer.new()
  @human_player.turn = -1

  def self.call
    puts "------------------------------------------------------------------------------------------------"
    puts
    puts
    puts
    puts "Welcome to Mastermind." 
    puts "Your computer opponent will generate 4 random colours out of a possible 6"
    puts "Your task is to guess the correct colour and position of all four colours within 12 guesses"

    @decoding_board.show(@decoding_board.board)

    @computer_player.generate_code


    puts "The computer has generated a random code, please enter your first guess (numbers 1 to 6, seperated by a space i.e; ""1 2 3 4"") and take note of the"
    puts "hints provided by the scoring pegs."


    puts "---------------------------------------------"

    until @decoding_board.winning_conditions_met?(@decoding_board.board, @human_player.turn)

      puts 
      @human_player.turn += 1
      @human_player.get_guess
      @decoding_board.insert_player_guess(@human_player.turn, @human_player.guess, @decoding_board.board)
      @decoding_board.check_if_exact_position(@computer_player.secret_code, @human_player.guess, @human_player.turn, @decoding_board.board)
      @decoding_board.check_if_contains_colour(@computer_player.secret_code, @human_player.guess, @human_player.turn, @decoding_board.board)
      @decoding_board.show(@decoding_board.board)

      puts "---------------------------------------------"
    end
  end
end

Mastermind.call 