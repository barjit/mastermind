class HumanPlayer

  attr_accessor :guess
  attr_accessor :turn

  def initialize
    @guess = []
    @turn = 0
  end

  def get_guess
    puts "Please provide 4 numbers (1 to 6) seperated by a space: "
    player_input = gets.chomp.split(" ")
    until guess_valid?(player_input)
      puts "Please provide 4 numbers (1 to 6) seperated by a space: "
      player_input = gets.chomp.split(" ")
    end
    @guess = player_input
  end

  def guess_valid?(input)
    
    filter = input.map do |ele|
      if ele.to_i.between?(1, 6)
        true
      else
        false
      end
    end

    if filter.include? false
      false
    elsif input.size != 4
      false
    else
      true
    end
  end

end

