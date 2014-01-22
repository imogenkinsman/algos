# A typical "introduction to dynamic programming" problem:
# Given a rod of length n, and an array of prices (value per cut length), find the highest maximum value.
#
# DP simply uses memoization (i.e. saving answers to computed sub-problems) in order to only solve each sub-problem once.
#
# For this problem (as well other as typical DP algorithms), it can be solved either top-down with memoization or with a
# bottom-up method

class DynamicCut

  def initialize(prices)
    @prices = prices
    @memo = {}
  end

  def solve(length)
    return @memo[length] if @memo.key?(length)

    if length == 0
      best_price = 0
    else
      best_price = -1
      1.upto(length) do |i|
        best_price = [best_price, @prices[i] + solve(length - i)].max
      end
    end
    @memo[length] = best_price
    return best_price
  end

end

class BottomUpDynamicCut

  def initialize(prices)
    @prices = prices
  end

  def solve(length)
    memo = { 0 => 0}
    1.upto(length) do |j|
      max_value = -1
      1.upto(j) do |i|
        max_value = [max_value, @prices[i] + memo[j - i]].max
      end
      memo[j] = max_value
    end

    return memo[length]
  end

end
