#check if a calendar date is in a given range

class Calendar
  def date_check(date, start_date, end_date)
    #return true or false
    Time.now
    range = start_date..end_date
    if date in range
      return true
    else
      return false
    end
  end
end
