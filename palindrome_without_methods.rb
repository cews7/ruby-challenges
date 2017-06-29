# I’d like you to determine the years, beginning at year 0, which are “palindromes” (the same series of characters forward and backwards)

#assumptions

#take in current year from 0 up until current year
#year is an integer
#the return value should be a count of all palindrome within that span of time
#you can use .each to start

#psuedo code

# 11 11, 22 22, 33, etc... 101 101, 202, 303, etc... 1001 1001, 1111 1111, 2002 2002
# check first and last digits of given year
# if these are the same && are less than 4 digits -> palindrome
# if year is four digits, check first and last digits && check middle left and middle right digits to see they are the same

#implementation
require 'pry'
class PalindromeFinder
  # def self.year_cycler(current_year)
  #   palindrome_count = 0
  #   current_year.times do |i|
  #     value = i.to_s.split("")
  #     if value.length < 4 && value[0] == value[-1]
  #       palindrome_count += 1
  #     elsif value.length == 4 && value[0] == value[-1] && value[-2] == value[1]
  #       palindrome_count += 1
  #     end
  #   end
  #   p palindrome_count
  # end


  # def self.year_cycler(current_year)
  #   palindrome_count = 0
  #   current_year.times do |i|
  #     if i.to_s.split("")[0] == i.to_s.split("")[-1]
  #       update_value = i.to_s.split("")[1..-2]
  #       if update_value[0] == update_value[-1]
  #         palindrome_count += 1
  #       end
  #     end
  #   end
  #   p palindrome_count
  # end


  def self.year_cycler(current_year)
    palindrome_count = 0
    current_year.times do |i|
      palindrome_check(palindrome_count, i)
    end
    sleep(2)
    p palindrome_count
  end

  def self.palindrome_check(palindrome_count, value)
    return 
    counter = 0
    split_values = value.to_s.split('')
    if split_values[0] == split_values[-1]
      counter += 2 #do we want counter here?
      update_value = split_values[1..-2]
    end
    plaindrome_count += 1 if counter == split_values.length
    palindrome_check(palindrome_count, update_value)
  end
end
a = 2017
PalindromeFinder.year_cycler(a)
