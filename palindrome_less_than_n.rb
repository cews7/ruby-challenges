#Find all palindromes less than n
# 22
#=> [11, 22]
require 'pry'

class Palindrome
  def self.less_than_n(n)
    palys = []
    n.times do |num|
      palys << num if num.to_s == num.to_s.reverse && num > 10
    end
    p palys
  end
end
Palindrome.less_than_n(23)
