require_relative 'test_helper'

class MessageShifterTest < Minitest::Test

  def test_it_exsist
    shift = MessageShifter.new("message")

    assert_instance_of MessageShifter, shift
  end

  def test_it_can_split_message
    shift = MessageShifter.new("ab c")

    assert_equal ["a", "b", " ", "c"], shift.message
  end

  def test_it_can_shift_message
    shift = MessageShifter.new("Hello World")
    shift_values = { A: 3,
              B: 27,
              C: 73,
              D: 20
    }
    exact = ["k", "e", "d", "e", "r"," ", "o", "h", "u", "l", "w"]

    assert_equal exact, shift.shift(shift_values)
  end
end
