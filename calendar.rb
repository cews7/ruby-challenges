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
