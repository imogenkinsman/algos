# Kadane's algorithm - finds the maximum subarray. More efficient than a divide-and-conquer approach.
#
# PERFORMANCE: O(n)

def kadane(ary)
  max_start = max_end = 0
  current_start = i = 0
  max_sum = current_sum = 0
  while i < ary.size
    current_sum += ary[i]
    if current_sum > max_sum
      max_sum = current_sum
      max_start = current_start
      max_end = i
    elsif current_sum <= 0
      current_sum = 0
      current_start = i + 1
    end
    i += 1
  end
  return [max_start, max_end, max_sum]
end
