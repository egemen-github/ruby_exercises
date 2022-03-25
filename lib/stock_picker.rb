def stock_picker(stock_prices)
  profit = 0
  buy_price = 0
  sell_price = 0
  buy_n_sell = []
  end_of = stock_prices.length

  stock_prices.each_with_index do |the_stock, the_stock_index|
    stock_prices[the_stock_index...end_of].each_with_index do |later_price, later_price_index|
      difference = later_price - the_stock

      next unless difference >= profit

      buy_n_sell = []
      profit = difference
      buy_price = the_stock
      sell_price = later_price
      buy_n_sell.push(the_stock_index)
      buy_n_sell.push(later_price_index)
    end
  end
  puts "If you had bought and sold at this indexes #{buy_n_sell}"
  puts "Buy Price: $#{buy_price} - Sell Price $#{sell_price}"
  puts "Max Profit: $#{profit}"
end

stock_picker([65, 36, 35, 25, 85, 71, 30, 23, 19])
