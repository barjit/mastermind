 # This class stores the computer players secret code.
class ComputerPlayer

  attr_reader :secret_code

  # Generate the computers players secret code. (Array of random numbers converted to strings)
  def generate_code
    array = [random_number, random_number, random_number, random_number]
    @secret_code = array.map {|int| int.to_s}
  end

  def random_number
    Random.new.rand(7)
  end

end