def stock_picker(stock_prices)
  best_days = nil
  max_profit = nil
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if best_days == nil || (sell_day > buy_day && profit > max_profit)
        best_days = [buy_day, sell_day]
        max_profit = profit
      end
    end
  end
  best_days
end