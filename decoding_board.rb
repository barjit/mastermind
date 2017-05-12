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

  def get_input
    puts ">> "
    @guess = gets.chomp
    @guess.split(" ").map(&:to_i)
    @guess
  end


end