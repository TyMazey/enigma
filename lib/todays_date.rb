require 'date'

class TodaysDate
  attr_reader :today

  def initialize
    @today = Date.today.strftime
  end

  def short_hand
    date_split = @today.split("-")
    date_split[2] + date_split[1] + yy
  end

  def yy
    year_arr = @today.split("-")[0].chars
    year_arr[2] + year_arr[3]
  end
end
