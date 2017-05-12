class ComputerPlayer

  def initialize
  end

  def generate_code
    @secret_code = [(Random.new.rand(1..6)), (Random.new.rand(1..6)), (Random.new.rand(1..6)), (Random.new.rand(1..6))]
  end



end