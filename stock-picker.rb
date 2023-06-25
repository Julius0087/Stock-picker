def stock_picker(prices)
  profit = 0
  profit_arr = []

  prices.each_with_index do |price, price_index|
    bought = price
    prices.each_with_index do |higher, index|
      if index > price_index
        if higher - bought > profit
          profit = higher - bought
          profit_arr[0] = price_index
          profit_arr[1] = index
        end
      end
    end
  end
  profit_arr
end

p stock_picker([17,3,6,9,15,8,6,1,10])