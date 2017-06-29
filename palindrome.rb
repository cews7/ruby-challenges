# find all the palindromes from 0..2017
# count total number of palindromes (11, 22, 33, 44, 55, 66, 101, etc.)
require 'pry'
class Count
  def self.palindrome(range)
    a = []
    range.each do |num|
      if num.to_s == num.to_s.reverse
        a << num
      end
    end
    p a.length
  end
end

range = (0..2017).to_a
Count.palindrome(range)
