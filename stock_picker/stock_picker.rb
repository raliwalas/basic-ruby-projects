def stock_picker(stock_prices)

    best_pair = [0, 1]
  
    min_buy = stock_prices[0]
    max_profit = 0

    lowest_day = 0
  
  
    stock_prices.each_with_index do |price, day|
  
      if price < min_buy && price != stock_prices.last
  
        min_buy = price
        lowest_day = day
  
      end
  
      if (price - min_buy) > max_profit
    
        max_profit = price - min_buy
        best_pair = [lowest_day, day]
          
      end
    end
  
    #puts " "
    puts "best_pair: #{best_pair}"
  
    #return best_pair
    
  end
  
#stock_picker([17,3,6,9,15,8,6,1,10, 1])
#=> [1,4]  # for a profit of $15 - $3 == $12


stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12