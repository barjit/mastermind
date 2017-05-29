# This class stores the computer players secret code.
class ComputerPlayer

  attr_accessor :secret_code

  # Generate the computers players secret code. (Array of random numbers converted to strings)
  def generate_code
    array = [(Random.new.rand(1..6)), (Random.new.rand(1..6)), (Random.new.rand(1..6)), (Random.new.rand(1..6))]
    @secret_code = array.map {|int| int.to_s}
  end

end