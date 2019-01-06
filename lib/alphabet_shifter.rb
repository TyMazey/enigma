class AlphabetShifter
  attr_accessor :alphabet

  def initialize
    @alphabet = ('a'..'z').to_a
  end

  def shift(amount)
    Hash[@alphabet.zip(@alphabet.rotate(amount))]
  end
end
