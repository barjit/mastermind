class ComputerPlayer

  attr_accessor :secret_code

  def initialize
    @secret_code = []
  end

  def generate_code
    array = [(Random.new.rand(1..6)), (Random.new.rand(1..6)), (Random.new.rand(1..6)), (Random.new.rand(1..6))]
    @secret_code = array.map {|int| int.to_s}
  end



end