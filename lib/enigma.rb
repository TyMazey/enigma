require_relative 'todays_date'

class Enigma < TodaysDate

  def initialize
    super
  end

  def encrypt(message, key = KeyGenerator.create(5), date = short_hand_date)
    new_message = MessageShifter.new_message(message, ShiftGenerator.generate(key, date))
    {encryption: new_message, key: key, date: date}
  end

  def decrypt(message, key, date = short_hand_date)
    new_message = MessageShifter.new_message(message, ShiftGenerator.generate(key, date, true))
    {decryption: new_message, key: key, date: date}
  end

  def end_of_message(message, key, date)
    decrypt(message, key, date)[:decryption].chars[-4..-1]
  end

  def crack(message, date = short_hand_date)
    key = "00000"
    until end_of_message(message, key, date) == [" ", "e", "n", "d"]
      key.next!
    end
    decrypt(message, key, date)
  end
end
