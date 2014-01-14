# Sorts an array
#
# Yep, another O(nlogn) comparison sort! Quicksort is interesting in that it has a O(n^2) worst-case running time, but
# it has very small constant factors and thus outperforms most other sorting algorithms. Properly implementing Quicksort
# (good partitioning and/or permuting the array) will make the worst case incredibly rare.
#
# PERFORMANCE: O(nlogn) average, O(n^2) worst case

def quick_sort(ary, left = 0, right = ary.size - 1)
  if left < right
    q = partition(ary, left, right)
    quick_sort(ary, left, q - 1)
    quick_sort(ary, q + 1, right)
  end
  ary
end

def partition(ary, left, right)
  #puts "#{ary} is ary, #{left} is left, #{right} is right"
  pivot = ary[right]
  i = left - 1
  left.upto(right - 1) do |j|
    if ary[j] <= pivot
      i += 1
      ary[i], ary[j] = ary[j], ary[i]
    end
  end
  ary[i + 1], ary[right] = ary[right], ary[i + 1]
  return i + 1
end

quick_sort([3,2,6,5,4,7,1,8])
