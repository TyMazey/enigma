require_relative 'alphabet_shifter'

class MessageShifter < AlphabetShifter

  def initialize
    @alphabet = ("a".."z").to_a.push(" ")
  end

  def keys_to_array(key_value)
    key_value.values
  end

  def shift(amount)
    super
  end

  def shift_message(message, key)
    key_rotation = keys_to_array(key)
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
