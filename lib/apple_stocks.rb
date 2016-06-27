require_relative '../config/environment'

def get_max_profit(stock_prices_yesterday)
  raise IndexError, 'Must provide more than 2 stock prices' if stock_prices_yesterday.length < 2

  min_price = stock_prices_yesterday.first
  max_profit = stock_prices_yesterday[1] - min_price

  stock_prices_yesterday[1..-1].each do |current_stock|
    potential_profit = current_stock - min_price
    max_profit = potential_profit if potential_profit > max_profit
    min_price = [min_price, current_stock].min
  end
  max_profit
end

puts get_max_profit([10, 7, 5, 8, 11, 9])
