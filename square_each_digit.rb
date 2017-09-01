require 'pry'
def square_it num
  num.to_s.chars.each do |digit|
    p digit.to_i ** 2
  end
end


square_it 9119
# => 81118
