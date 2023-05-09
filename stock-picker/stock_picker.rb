# create a stock picker method that takes an array of stock prices,
# one for each hypothetical day. It should return a pair of days
# representing the best day to buy and the best day to sell.
# Days start at 0.
def stock_picker(prices)
    # initialize variables
    best_profit = 0
    best_days = []
    # iterate through the array of prices to find the lowest buy price
    prices.each_with_index do |buy_price, buy_day|
        # iterate through the array of prices to find the highest sell price
        prices.each_with_index do |sell_price, sell_day|
            # if the sell price is higher than the buy price and the profit is higher
            # than the best profit, update the best profit and best days
            if sell_day > buy_day && sell_price - buy_price > best_profit
                best_profit = sell_price - buy_price
                best_days = [buy_day, sell_day]
            end
        end
    end
    # print the best days to buy and sell and the profit
    print "The best day to buy is #{best_days[0]} and best day to sell is "
    print "#{best_days[1]} for a profit of $#{best_profit}. \n"
end

stock_picker([17,3,6,9,15,8,6,1,10])