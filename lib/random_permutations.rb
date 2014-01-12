# random array permutations, as described in 5.1

# COMPLEXITY: O(nlogn) (well, determined by the complexity of the sort, since random-value-assignment is O(n))
def permute_by_sorting(ary)
  size = ary.size
  ary.sort_by! do |element|
    rand(1..(size**3))
  end
end

# aka the "knuth shuffle"
# COMPLEXITY: O(n)
def permute_in_order(ary)
  size = ary.size
  ary.each_index do |i|
    random = rand(i...size)
    ary[i], ary[random] = ary[random], ary[i]
  end
end

ary = (0..20).to_a
#permute_in_order(ary)
permute_by_sorting(ary)
puts ary
