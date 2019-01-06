require_relative 'alphabet_shifter'

class MessageShifter < AlphabetShifter

  def initialize
    @alphabet = ("a".."z").to_a.push(" ")
  end

  def key_rotation(key_value)
    key_value.values
  end

  def shift(amount)
    super
  end

  def shift_message(message, key)
    key_rotation = key_rotation(key)
    message.chars.map do |letter|
      new_letter = shift(key_rotation[0])
      key_rotation.rotate!(1)
      new_letter[letter.downcase]
    end
  end

  def self.new_message(message, key)
    new_mssg = new
    new_mssg.shift_message(message, key).join
  end
end
