# algos for generating all permutations of a string
#
# the number of k-permutations for an n-set is (n!)/(n - k)!
# http://rosettacode.org/wiki/Permutations has good details on algorithms

# ruby magic - this has HORRIBLE complexity (factorial), so it'll take forever to complete if ary.size is large
def permutations(str)
  str.split('').permutation.map(&:join)
end

# long-form without magic
def my_permutations(str)
  return Array(str) if str.size < 2

  ret_ary = []
  str.each_char do |char|
    ret_ary += my_permutations(str.sub(char, '')).map { |fragment| char + fragment }
  end

  return ret_ary
end

# TAOCP mentions that we can optimize our permutation algorithm if we limit it to distinct permutations
def optimized_permutations(str, prior_string = "")
  return Array(str) if str.size < 2

  ret_ary = []
  set = Set.new
  str.each_char do |char|
    if set.add?(char)
      ret_ary += optimized_permutations(str.sub(char, ''), prior_string).map { |fragment| char + fragment }
    end
  end

  return ret_ary
end
