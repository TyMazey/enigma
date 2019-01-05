class MessageShifter

  def initialize(message)
    @alphabet = ('a'..'z').to_a.push(' ')
    @message = message
  end

  def split_message
    @message.split('')
  end

  def self.encrypt(message, key)
    shift = new(message)
    binding.pry
  end

  def self.decrypt(message, key)
    shift = new(message)
  end
end
