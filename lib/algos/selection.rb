# CLRS 9.2
#
# The "selection problem" is this: given an array, find its kth largest number.
#
# - CLRS describes both O(n) (worst time) and O(n) (average time) solutions.
# - another approach is to simply sort the array (typically O(nlogn)) and select the kth element. This is suboptimal, but
#     may be an efficient approach if you want to find more than a single element of the array.
# - O(n) is the lower bound for finding the kth element with an unordered list. If only the minimum or maximum is needed,
#     this can be improved upon with a heap or a binary search tree variant (typically O(logn) depending on the implementation)

# This is O(n) average time - use quicksort, but we don't need to sort the array - just do pivots until we return a pivot
# that is in the kth position

def quick_select(array, k, left = 0, right = array.size - 1)

  i = qs_partition(array, left, right)

  if i == k
    #puts "array is #{array}"
    return array[i]
  elsif i < k
    return quick_select(array, k, i + 1, right)
  else
    return quick_select(array, k, left, i - 1)
  end

end

def qs_partition(array, left, right)
  i = rand(left..right)
  array[i], array[right] = array[right], array[i]

  i = left
  pivot = array[right]
  left.upto(right - 1) do |j|
    if array[j] <= pivot
      array[j], array[i] = array[i], array[j]
      i += 1
    end
  end

  array[right], array[i] = array[i], array[right]

  return i
end

# there's a O(n) worst case algorithm as well, but it's non-intuitive and unnecessary
