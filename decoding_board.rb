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
    puts "                |                "
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
      if (secret_code[i] <=> player_guess[i]) == 0
        @board[player_turn][j+4] = '%'
      else 
        @board[player_turn][j+4] = '*'
      end
      i += 1
      j += 1
    end
  end

  def winning_conditions
    false
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