require 'date'

module TodaysDate

  def short_hand_date
    date_split = @date_created.strftime.split("-")
    date_split[2] + date_split[1] + yy
  end

  def yy
    year_arr = @date_created.strftime.split("-")[0].chars
    year_arr[2] + year_arr[3]
  end
end
