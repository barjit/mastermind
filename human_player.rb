class HumanPlayer

  attr_accessor :guess
  attr_accessor :turn

  def initialize
    @guess = []
    @turn = 0
  end

  def get_guess
    puts ">> "
    input = gets.chomp
    @guess = input.split(" ")
  end


end