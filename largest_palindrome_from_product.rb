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
