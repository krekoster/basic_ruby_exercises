def stock_picker(prices)
  result = []
  difference = 0
  prices.each_with_index  do |price_current, index_current| 
    prices.last(prices.length-1).each_with_index do |price_next, index_next| 
      if price_next - price_current > difference && index_next > index_current
        difference = price_next - price_current 
        result[0] = index_current + 1
        result[1] = index_next + 2
      end
        
    end
  end
  return result
end

print stock_picker ([ 17, 1, 3, 6, 9, 15, 8, 6, 288, 1,  345, 10])
