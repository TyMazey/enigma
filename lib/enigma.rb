class Enigma

  def initialize

  end

  def encrypt(message, key, date = @today)
    new_message = MessageShifter.new_message(message, ShiftGenerator.generate(key, date))
    {encryption: new_message, key: key, date: date}
  end

  def decrypt(message, key, date)
    new_message = MessageShifter.new_message(message, ShiftGenerator.generate(key, date, true))
    {decryption: new_message, key: key, date: date}
  end
end
