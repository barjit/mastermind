class HumanPlayer

  def initialize
  end

  def get_input
    puts ">> "
    @guess = gets.chomp
    @guess.split(" ").map(&:to_i)
  end

end