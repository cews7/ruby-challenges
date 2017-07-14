#Find all palindromes less than n
# 22
#=> [11, 22]
class Palindrome
  def self.less_than_n(n)
    palys = []
    n.times do |num|
      palys << num if num.to_s == reverse_string(num) && num > 10
    end
    p palys
  end

  def self.reverse_string(number)
    string_num = number.to_s
    half_length = string_num.length / 2
    half_length.times {|i| string_num[i], string_num[-i-1] = string_num[-i-1], string_num[i] }
    string_num
  end
end
Palindrome.less_than_n(10000)
