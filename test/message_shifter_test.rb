require_relative 'test_helper'

class MessageShifterTest < Minitest::Test

  def test_it_exsist
    shift = MessageShifter.new("message", "shift_values")

    assert_instance_of MessageShifter, shift
  end

  def test_it_can_shift_message
    shift_values = { A: 3,
              B: 27,
              C: 73,
              D: 20
    }

    assert_equal "keder ohulw", MessageShifter.encrypt("Hello World", key_values)
  end
end
