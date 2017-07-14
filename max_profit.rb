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

a = [6, 11, 15, 13, 56, 1, 14, 2, 9]
Finance.max_profit(a)
