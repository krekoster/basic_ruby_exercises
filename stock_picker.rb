def stock_picker(prices)
  result = []
  result.push(prices.last(prices.length - 1).max)
  result.push(prices.last(prices.length - 1).min)
  result
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
