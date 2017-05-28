class DecodingBoard

  def initialize
    @board = Array.new(12) { Array.new(8){" "}}
  end

  def display_board
    puts
    puts
    print "-----------Mastermind------------"
    print "\n"
    puts "                |                "
    puts "  Your Guess:   | Scoring Pegs:  "
    puts "-----------------"
      @board.each do |row|
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

  def insert_player_guess(turn, guess)
    @board[turn][0] = guess[0]
    @board[turn][1] = guess[1]
    @board[turn][2] = guess[2]
    @board[turn][3] = guess[3]
  end

# -------------Work on below-----------------
  # def insert_black_peg
  #   @board[turn][4] = '%'
  # end

  # def insert_white_peg
  #   @board[turn][5] = '*'
  # end

  def check_if_exact_position(secret_code, player_guess, player_turn)
    i = 0
    j = 0
    while i < 4
      if secret_code[i] == player_guess[i]
        @board[player_turn][j+4] = '%'
      end
      i += 1
      j += 1
    end
  end

  def check_if_contains_colour(secret_code, player_guess, player_turn)
    k = 4
    player_guess.each do |color|
      if secret_code.include? color
        unless @board[player_turn][k] == '%'
          @board[player_turn][k] = '*'
        end
      end
      k += 1
    end
  end

  def winning_conditions?(player_turn)
    if (@board[player_turn][4] == '%') && (@board[player_turn][5] == '%') && (@board[player_turn][6] == '%') && (@board[player_turn][7] == '%')
      puts "Congratulations, human wins"
      true
    elsif (player_turn == 11)
      puts "Computer Wins!"
      true
    else
      false
    end 
  end
# -------------Work on above-----------------

end


# If it's the players first turn, go to row[0] and for each cell,
# place each of the 4 choices.

# If it's the players second turn, go to row[1] and for each cell,
# place each of the 4 choices

# etc


#to compare:

# secret_code = [4, 1, 2, 3]
# player_guess = [2, 2, 1, 3]

# i = 0
#
# while i < 4
#   if (secret_code[i] <=> player_guess[i]) == 0
#     @black_peg(correct colour and position)
#   end
#   i += 1
# end

#