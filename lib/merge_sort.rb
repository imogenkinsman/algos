def merge(left, right)
  ary = []
  until left.empty? || right.empty?
    ary << ((left.first <=> right.first) == -1 ? left.shift : right.shift)
  end
  return ary + left + right
end

def merge_sort(ary)
  return ary if ary.size <= 1
  half = ary.size / 2
  left = ary[0...half]
  right = ary[half..-1]
  return merge(merge_sort(left), merge_sort(right))
end
