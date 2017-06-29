# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers

#assumumptions

#psuedo code
#make an array from 100...999
#iterate over the array of numbers, multiplying every combination of two
#check if result is palindrome
#if so compare it against last stored palindrome
#repeat until largest palindrome is found

#implementation
require 'pry'
class PalindromeTrick
  def self.highest_product_of_three(array)
    product         = 0
    high_palindrome = 0
    array.each_with_index do |outer_value, outer_index|
      array.each_with_index do |inner_value, inner_index|
        product = outer_value * inner_value
        if product > high_palindrome && product.to_s.eql?(product.to_s.reverse)
          high_palindrome = product
        end
      end
    end
    p high_palindrome
  end
end

a = (100..999).to_a
PalindromeTrick.highest_product_of_three(a)
