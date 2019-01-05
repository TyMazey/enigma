require_relative 'test_helper'

class TodaysDateTest < Minitest::Test

  def test_it_exsist
    today = TodaysDate.new

    assert_instance_of TodaysDate, today
  end

  def test_it_can_return_todays_date
    today = TodaysDate.new
    exact = Date.today

    assert_equal exact.strftime, today.today
  end

  def test_it_can_return_current_year_as_yy_not_yyyy
    today = TodaysDate.new

    assert_equal "19", today.yy
  end

  def test_it_can_return_date_as_dd_mm_yy
    today = TodaysDate.new


    assert_equal "050119", today.short_hand
  end
end
