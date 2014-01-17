# sorts an array
#
# A non-comparison sort! Pretty inefficient in terms of space if there's a large range of values.
# - only works for values in the range 0..k, though this could be modified to support a range of min..,max
#
# Complexity: O(n)

def counting_sort(array, k)
  count_array = Array.new(k + 1, 0)
  array.each do |val|
    count_array[val] += 1
  end
  total = 0 # is there a more ruby-like way to do this with inject/map?
  count_array.each_with_index do |val, i|
    total += val
    count_array[i] = total
  end
  output_array = Array.new(array.size)
  array.reverse_each do |val|
    output_array[count_array[val] - 1] = val
    count_array[val] -= 1
  end
  output_array
end
