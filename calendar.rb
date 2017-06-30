#find a date in a given range
#return true or false


#assumptions
#everything comes in as a date object
#does the method take an arg?
#does date range come in as a string?

#psuedo code
#feed object to date_check method
#12/12/12 - 12/14/12
#12/13/12
# => true

#implementation
require 'pry'
require 'date'
class Calendar
  attr_reader :start_date, :end_date
  def initialize(start_date, end_date)
      @start_date = Date.new(2012,12,12)
      @end_date   = Date.new(2012,12,14)
  end

  def date_check(date)
    if date < end_date && date > start_date
      return true
    else
      return false
    end
  end
end

date_range = Calendar.new
date_range.date_check(Date.new(2012,12,13))
