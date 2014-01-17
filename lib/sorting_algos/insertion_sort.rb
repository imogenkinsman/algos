# Sorts an array
#
# Insertion Sort is typically taught for instructional purposes and rarely used in production, because of its poor
# average performance.
#
# The algorithm is similar to how most humans sort a hand of cards - by separating sorted and unsorted regions, and
# moving cards from the unsorted part to the sorted.
#
# PERFORMANCE: O(n^2) worst/average case. O(n) if already sorted.

def insertion_sort(ary)
  ary.each_index do |i|
    value = ary[i]
    hole_position = i
    while hole_position > 0 and value < ary[hole_position - 1]
      ary[hole_position] = ary[hole_position - 1]
      hole_position -= 1
    end
    ary[hole_position] = value
  end
end
