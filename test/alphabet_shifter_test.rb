require_relative 'test_helper'

class AlphabetShifterTest < Minitest::Test

  def test_it_exsist
    shift = AlphabetShifter.new

    assert_instance_of AlphabetShifter, shift
  end

  def test_its_created_with_an_array_of_alphabet
    shift = AlphabetShifter.new

    exact = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",]


    assert_equal exact, shift.alphabet
  end

  def test_it_can_rotate_alphabet
    shift = AlphabetShifter.new

    exact = ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a"]

    assert_equal exact, shift.shift(1)
end
