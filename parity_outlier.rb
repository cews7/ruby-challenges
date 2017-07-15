require 'pry'
def parity_outlier?(list_of_nums)
  evens = list_of_nums.collect { |num| num if num.even? }.compact
  odds  = list_of_nums.collect { |num| num if num.odd? }.compact
  if list_of_nums.length != evens.length && list_of_nums.length != odds.length
    puts 'outlier found!'
  else
    puts 'no outliers'
  end
end

parity_outlier?([1,1,1])
