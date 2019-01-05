class KeyGenerator

  def initialize
    @numbers = (0..9)
  end

  def randomizer
    rand(@numbers).to_s
  end

  def self.create(length)
    key = new
    length.times.collect {|num| key.randomizer}.join
  end
end
