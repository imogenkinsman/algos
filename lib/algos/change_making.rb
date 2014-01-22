# another DP problem
#
# Problem: Given a set of coins of different denominations, what is the least number of coins needed to make
# a given amount of money?

def least_coins(value, denoms)

  min_coins = [0]

  1.upto(value) do |i|
    current_best = 9999
    denoms.each do |coin|
      if (coin <= i && (coin - i <= 0))
        current_best = [current_best, 1 + min_coins[i - coin]].min
      end
    end
    min_coins[i] = current_best
  end

  return min_coins[value]
end
