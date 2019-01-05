require_relative 'test_helper'

class EnigmaTest < Minitest::Test

  def test_it_exsist
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_it_can_encrypt
    enigma = Enigma.new

    exact =  {encryption: "keder ohulw",
              key: "02715",
              date: "040895"
             }

    assert_equal exact, enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt
    enigma = Enigma.new

    exact =  {decryption: "hello world",
              key: "02715",
              date: "040895"
             }

    assert_equal exact, enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_encrypt_message_without_date
    enigma = Enigma.new

    exact =  {encryption: "nfhauasdxm ",
              key: "02715",
              date: enigma.short_hand_date
             }

    compare =  {decryption: "hello world",
                key: "02715",
                date: enigma.short_hand_date
              }
    assert_equal exact, enigma.encrypt("Hello World", "02715")
    assert_equal compare, enigma.decrypt("nfhauasdxm ", "02715", enigma.short_hand_date)
  end
end
