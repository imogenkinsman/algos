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
  pivot = ary[right]
  i = left
  left.upto(right - 1) do |j|
    if ary[j] <= pivot
      ary[i], ary[j] = ary[j], ary[i]
      i += 1
    end
  end
  ary[i], ary[right] = ary[right], ary[i]
  return i
end

# randomly swap right-most element before partitioning to improve average performance
# (chance of worst-case is like 1/n! regardless of the input)

def randomized_quick_sort(ary, left = 0, right = ary.size - 1)
  if left < right
    q = randomized_partition(ary, left, right)
    randomized_quick_sort(ary, left, q - 1)
    randomized_quick_sort(ary, q + 1, right)
  end
  ary
end

def randomized_partition(ary, left, right)
  i = rand(left..right)
  ary[right], ary[i] = ary[i], ary[right]
  partition(ary, left, right)
end

# an even better implementation than randomly swapping the pivot with an element is to randomly pick 3 elements
# and choose the median of the three
