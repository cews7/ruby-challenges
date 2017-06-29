#find all palindromes less than n

#psuedo code
# iterate over array for all nums below n
# grab all the palindrome nums
#
require 'pry'

#implementation
class Palindrome
  def self.find_less_than_n(n)
    palindromes = []
    n.times do |i|
      i.reverse(i)
      palindromes << i
    end
  end
  p palindromes


  def reverse(n)
    a = []
    splitter = n.split("")
    r = splitter.map do |c|
      word = a.unshift(c)
    end[0].join("")
  end
end

Palindrome.find_less_than_n(10000)
