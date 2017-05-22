class DecodingBoard
  require_relative 'human_player.rb'

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

  def insert_player_guess(guess)
    @board[0][0] = guess[0]
    @board[0][1] = guess[1]
    @board[0][2] = guess[2]
    @board[0][3] = guess[3]
  end



end


# If it's the players first turn, go to row[0] and for each cell,
# place each of the 4 choices.

# If it's the players second turn, go to row[1] and for each cell,
# place each of the 4 choices

# etc
