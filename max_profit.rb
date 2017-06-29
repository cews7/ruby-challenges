require 'pry'

# class Finance
#   def self.max_profit(yesterday_stock_prices)
#     min = 100 #not ideal
#     max = 0
#     yesterday_stock_prices.each do |amount|
#       min = amount  if amount < min
#       max = amount  if amount > max
#     end
#     p max - min
#   end
# end

# max = 0
# for(i = 0; i > array.length; i++){
#   for(j = 0; j > array.length - i; j++){
#     profit = array[j + 1] - array[i]
#     if(profit > max){
#       max = profit
#     }
#   }
# }
# return max
a = [6, 11, 15, 13, 56, 1, 14, 2, 9]

class Finance
  def self.max_profit(yesterday_stock_prices)
    max_profit = 0
    yesterday_stock_prices.each_with_index do |i, index|
      yesterday_stock_prices.each_with_index do |j, deeper_index|
        profit = j - i
        if profit > max_profit && deeper_index > index 
          max_profit = profit
        end
      end
    end
    p max_profit
  end
end

Finance.max_profit(a)
