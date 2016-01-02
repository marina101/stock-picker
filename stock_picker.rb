#This program takes an array of stock prices from different days and outputs the
#best day to buy and the best day to sell to make the most profit, with the caveat
#that you have to buy before you can sell, and that you cannot buy on the last day
#or sell on the first day. Days begin at 0

prices = [17,3,6,9,15,8,6,1,10]

  #reverse:  10, 1, 6, 8, 15, 9, 6, 3, 17



def findBestDifference(array)
  bigDifference = 0
  indexBuy = 0
  indexSell = 0

  array.reverse!
  current = 0
  neighbour = 1

  while (current < (array.length - 1)) do   #goes backwards in time, checking all possible profits
    while (neighbour < array.length) do
      profit = array[current] - array[neighbour]
      if profit > bigDifference
        bigDifference = profit
        indexSell = 8 - current
        indexBuy = 8 - neighbour
      end
      neighbour += 1    
    end
    current += 1
    neighbour = current +1 #reset neighbour loop
  end
  puts "The biggest profit to be made is #{bigDifference} by buying on day #{indexBuy} and selling on day #{indexSell}"
end

findBestDifference(prices)





