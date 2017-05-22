class HumanPlayer

  attr_accessor :guess

  def initialize
    @guess = []
  end

  def get_guess
    puts ">> "
    input = gets.chomp
    @guess = input.split(" ")
  end

end