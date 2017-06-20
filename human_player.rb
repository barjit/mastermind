# This class stores information about the human player
class HumanPlayer

  attr_accessor :guess
  attr_accessor :turn
  
  # Create the human player object and set their turn to 0
  def initialize
    @turn = 0
  end

  # Retrieve the human players guess. The player will continue to be prompted for a guess until it is in the correct format.
  def get_guess
    player_input = []
    until guess_valid?(player_input)
      puts "Please provide 4 numbers (1 to 6) seperated by a space: "
      player_input = gets.chomp.split(" ")
    end
    @guess = player_input
  end

  # Check whether the players input is valid.
  def guess_valid?(input)
    choices = input.map do |choice|
      if choice.to_i.between?(1, 6)
        true
      else
        false
      end
    end

    if choices.include? false
      false
    elsif input.size != 4
      false
    else
      true
    end
  end

end

 