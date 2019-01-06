require_relative 'test_helper'

class MessageShifterTest < Minitest::Test

  def test_it_exsist
    shift = MessageShifter.new

    assert_instance_of MessageShifter, shift
  end

  def test_it_initializes_alphabet_with_space_not_alphabet_from_super_class
    shift = MessageShifter.new

    exact = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

    assert_equal exact, shift.alphabet
  end

  def test_it_can_shift_message
    shift = MessageShifter.new
    shift_values = { A: 3,
              B: 27,
              C: 73,
              D: 20
    }
    exact = ["k", "e", "d", "e", "r"," ", "o", "h", "u", "l", "w"]

    assert_equal exact, shift.shift_message("Hello World", shift_values)
  end

  def test_it_can_create_new_message_with_shift_values
    shift_values = { A: 3,
              B: 27,
              C: 73,
              D: 20
    }

    assert_equal "keder ohulw", MessageShifter.new_message("Hello World", shift_values)
  end
end
