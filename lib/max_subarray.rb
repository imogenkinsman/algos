# Finds the maximum-value subarray from a given array
#
# This algorithm uses a divide-and-conquer approach, which is faster than brute-force (O(n^2)) but is less optimal
# than Kadane's algorithm.
#
# PERFORMANCE: O(nlogn)

require 'bigdecimal'

def max_crossing_subarray(ary, low, mid, high)
  right_sum = left_sum = -1 * BigDecimal('Infinity')
  sum = max_left = max_right = 0
  mid.downto(low) do |i|
    sum = sum + ary[i]
    if sum > left_sum
      left_sum = sum
      max_left = i
    end
  end
  sum = 0
  (mid + 1).upto(high) do |i|
    sum = sum + ary[i]
    if sum > right_sum
      right_sum = sum
      max_right = i
    end
  end
  return [max_left, max_right, left_sum + right_sum]
end

def max_subarray(ary, low = 0, high = ary.size - 1)
  return [low, high, ary[low]] if high == low

  mid = (low + high) / 2
  left_low, left_high, left_sum = max_subarray(ary, low, mid)
  right_low, right_high, right_sum = max_subarray(ary, mid + 1, high)
  cross_low, cross_high, cross_sum = max_crossing_subarray(ary, low, mid, high)
  case [left_sum, right_sum, cross_sum].max
  when left_sum
    return [left_low, left_high, left_sum]
  when right_sum
    return [right_low, right_high, right_sum]
  else
    return [cross_low, cross_high, cross_sum]
  end
end
