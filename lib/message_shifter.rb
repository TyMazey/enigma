class MessageShifter
  attr_reader :alphabet,
              :message

  def initialize(message)
    @alphabet = ('a'..'z').to_a.push(' ')
    @message = message.chars
  end

  def key_rotation(key_value)
    key_value.values
  end

  def shift_message(key)
    key_rotation = key_rotation(key)
    @message.map do |letter|
      new_letter = Hash[@alphabet.zip(@alphabet.rotate(key_rotation[0]))]
      key_rotation.rotate!(1)
      new_letter[letter.downcase]
    end
  end

  def self.new_message(message, key)
    new_mssg = new(message)
    h = new_mssg.shift_message(key).join
  end
end
