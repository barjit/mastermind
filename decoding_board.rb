# This class stores information about the decoding board
class DecodingBoard

  attr_accessor :board
  
  # Create the board, an array of 12 rows and 8 columns.
  def initialize
    @board = Array.new(12) { Array.new(8){" "}}
  end

  # Display the board. 4 columns are to display the players guess and 4 columns provide feedback '%' for exact match and '*' for colour match.
  def show(board)
    puts
    puts
    print "-----------Mastermind------------"
    print "\n"
    puts "                |                "
    puts "  Your Guess:   | Scoring Pegs:  "
    puts "-----------------"
      board.each do |row|
        print "|"
        row.each do |col|
          print " " + col + " |"
        end
        print "\n"
        print "-----------------"
        print "\n"
      end
    puts "                |                "
    puts "                |                "
    puts
    puts
  end

  # insert the players guess onto the board.
  def insert_player_guess(turn, guess, board)
    board[turn][0] = guess[0]
    board[turn][1] = guess[1]
    board[turn][2] = guess[2]
    board[turn][3] = guess[3]
  end

  # Compare each value in secret_code with each value in guess. Look for exact match.
  def check_if_exact_position(secret_code, player_guess, player_turn, board)
    i = 0
    j = 0
    while i < 4
      if secret_code[i] == player_guess[i]
        board[player_turn][j+4] = '%'
      end
      i += 1
      j += 1
    end
  end

  # Check if value from guess is inside secret_code.
  def check_if_contains_colour(secret_code, player_guess, player_turn, board)
    k = 4
    player_guess.each do |color|
      if secret_code.include? color
        unless board[player_turn][k] == '%'
          board[player_turn][k] = '*'
        end
      end
      k += 1
    end
  end

  # Check if winning conditions have been met.
  def winning_conditions_met?(board, player_turn)
    if (board[player_turn][4] == '%') && (board[player_turn][5] == '%') && (board[player_turn][6] == '%') && (board[player_turn][7] == '%')
      puts
      puts "Congratulations, human wins"
      puts
      puts "---------------------------------------------"
      true
    elsif (player_turn == 11)
      puts
      puts "Computer Wins!"
      puts
      puts "---------------------------------------------"
      true
    else
      false
    end 
  end

end 
