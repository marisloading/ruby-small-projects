# function takes an array of stocks, each value representing the stock value for each day. Days start at 0
# checks which number from the array is the lowest and which one is the biggest (after the lowest, we need to buy before selling)
# returns two days, one for buying and another for selling the stock for maximum profit.

def stock_picker(array)
  cheapest_day = array.index(array.min)

  # in case the cheapest day is the last day, look for the second cheapest day instead
  if cheapest_day == array.length - 1
    cheapest_day = array.index(array.slice(0, array.length - 1).min)
  end

  arr_after_buy = array.slice(cheapest_day, array.length - 1)
  expensive_day = array.index(arr_after_buy.max)

  days_picked = [cheapest_day, expensive_day]
end

p stock_picker([5, 10, 15, 2, 8, 13, 9])

p stock_picker([9, 7, 12, 28, 7, 8, 2])