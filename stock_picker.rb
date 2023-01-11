#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
array = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)

  profit = 0
  winners = [0, 0]
  low_p = array[0]
  low_i = 0

  array.each_with_index do |price, index|
    if price < low_p
      low_p = price
      low_i = index
    end

    if price - low_p > profit
      profit = price - low_p
      winners = [low_i, index] 
    end
  end
    puts winners, "for a profit of $#{profit}"
    winners
end



stock_picker([17,3,6,9,15,8,6,1,10])
