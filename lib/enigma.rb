require_relative 'todays_date'

class Enigma
  include TodaysDate

  def initialize
    @date_created = Date.today
  end

  def encrypt(message, key = KeyGenerator.create(5), date = short_hand_date)
    shift = ShiftGenerator.generate(key, date)
    new_message = MessageShifter.new_message(message, shift)
    {encryption: new_message, key: key, date: date}
  end

  def decrypt(message, key, date = short_hand_date)
    shift = ShiftGenerator.generate(key, date, true)
    new_message = MessageShifter.new_message(message, shift)
    {decryption: new_message, key: key, date: date}
  end

  def end_of_message(message, key, date)
    decrypt(message, key, date)[:decryption][-4..-1]
  end

  def crack(message, date = short_hand_date)
    key = "00000"
    until end_of_message(message, key, date) == " end"
      key.next!
    end
    decrypt(message, key, date)
  end
end
