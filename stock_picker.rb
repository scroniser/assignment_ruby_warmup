def stock_picker(stocks)
  maxWin = 0
  buySell = []
  stocks.each_with_index do |x, index|
    stocks.each_with_index do |y, index2|
      if x < y && index < index2 && maxWin < y - x
        maxWin = y-x
        buySell[0] = index2
        buySell[1] = index
      end
    end
  end
  return buySell
end

#test
#print stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])