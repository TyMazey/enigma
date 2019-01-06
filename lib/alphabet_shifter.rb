class AlphabetShifter
  attr_reader :alphabet

  def initialize
    @alphabet = ('a'..'z').to_a
  end

  def shift(rotation)
    Hash[@alphabet.zip(@alphabet.rotate(rotation))]
  end
end
