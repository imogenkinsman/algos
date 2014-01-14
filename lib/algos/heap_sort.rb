# Sorts an array
#
# Heap sort is another comparison sort - and the most optimal time complexity for a comparison sort is O(nlogn),
# which is (coincidentally) the running time for heap sort.
#
# - (can be) in place - the trick is to swap places from the top to the last element, and decrement a @size variable
#     of the array holding the heap - so it's still in the array, but we end up with a sorted array after doing this for all elements
# - uses a heap data structure, which also makes for a good priority queue implementation
#
# PERFORMANCE: O(nlogn)

def heap_sort(ary)

  heap = MaxHeap.new(ary)
  sorted_array = []
  until heap.heap.empty?
    sorted_array.unshift(heap.pop_max)
  end

  sorted_array
end
