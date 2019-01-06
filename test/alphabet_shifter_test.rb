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

  def test_it_can_make_hash_using_alphabet_as_key_and_rotated_alphabet_as_values
    shift = AlphabetShifter.new

    exact = { "a" => "b",
              "b" => "c",
              "c" => "d",
              "d" => "e",
              "e" => "f",
              "f" => "g",
              "g" => "h",
              "h" => "i",
              "i" => "j",
              "j" => "k",
              "k" => "l",
              "l" => "m",
              "m" => "n",
              "n" => "o",
              "o" => "p",
              "p" => "q",
              "q" => "r",
              "r" => "s",
              "s" => "t",
              "t" => "u",
              "u" => "v",
              "v" => "w",
              "w" => "x",
              "x" => "y",
              "y" => "z",
              "z" => "a"
    }

    assert_equal exact, shift.shift(1)
  end
end
