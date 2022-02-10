def stock_picker(stock_prices)
    profit = 0
    buy_price = 0
    sell_price = 0
    buy_n_sell = []
    end_of = stock_prices.length

    stock_prices.each do |stock_I_have|

        my_stock_index = stock_prices.index(stock_I_have)

        stock_prices[my_stock_index...end_of].each do |later_price|

            potential_sell_index = stock_prices.index(later_price)

            difference = later_price - stock_I_have

            if difference >= profit
                buy_n_sell = []
                profit = difference 
                buy_price = stock_I_have
                sell_price = later_price
                buy_n_sell.push(my_stock_index)
                buy_n_sell.push(potential_sell_index)
                
            end
        end
    end
    puts "If you had bought and sold at this indexes #{buy_n_sell}"
    puts "Buy Price: $#{buy_price} - Sell Price $#{sell_price}"
    puts "Max Profit: $#{profit}"
end

stock_picker([90,36,35,25,85,71,30,23,19])
