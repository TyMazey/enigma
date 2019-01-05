require_relative 'todays_date'

class Enigma < TodaysDate

  def initialize
    super
  end

  def encrypt(message, key, date = short_hand_date)
    new_message = MessageShifter.new_message(message, ShiftGenerator.generate(key, date))
    {encryption: new_message, key: key, date: date}
  end

  def decrypt(message, key, date = short_hand_date)
    new_message = MessageShifter.new_message(message, ShiftGenerator.generate(key, date, true))
    {decryption: new_message, key: key, date: date}
  end
end
