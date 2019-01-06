require_relative 'test_helper'

class TodaysDateTest < Minitest::Test


  def test_it_can_return_current_year_as_yy_not_yyyy
    enigma = Enigma.new

    assert_equal "19", enigma.yy
  end

  def test_it_can_return_todays_date
    enigma = Enigma.new

    assert_equal "060119", enigma.short_hand_date
  end
end
