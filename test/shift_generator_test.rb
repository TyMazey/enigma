require_relative 'test_helper'

class ShiftGeneratorTest < Minitest::Test

  def test_it_exsist
    shift = ShiftGenerator.new('02715', '040895')

    assert_instance_of ShiftGenerator, shift
  end

  def test_it_can_create_key_values
    shift = ShiftGenerator.new('02715', '040895')

    exact = { A: 02,
              B: 27,
              C: 71,
              D: 15
    }

    assert_equal exact, shift.key_values
  end

  def test_it_can_create_date_values
    shift = ShiftGenerator.new('02715', '040895')

    exact = { A: 1,
              B: 0,
              C: 2,
              D: 5
    }

    assert_equal exact, shift.date_values
  end

  def test_it_can_create_final_shift_values
    shift = ShiftGenerator.new('02715', '040895')

    key_values = { A: 02,
                   B: 27,
                   C: 71,
                   D: 15
    }
    date_values = { A: 1,
                    B: 0,
                    C: 2,
                    D: 5
    }
    exact = { A: 3,
              B: 27,
              C: 73,
              D: 20
    }

    assert_equal exact, shift.shift_values(key_values, date_values, false)
  end

  def test_it_can_generate_shift_values_from_self
    exact = { A: 3,
              B: 27,
              C: 73,
              D: 20
    }

    assert_equal exact, ShiftGenerator.generate('02715', '040895')
  end
end
