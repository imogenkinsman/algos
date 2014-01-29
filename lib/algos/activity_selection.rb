# Activity Selection Problem
#
# Selects from a set of overlapping activities such that the highest number of activities can be chosen.
# A good example of a greedy algorithm.
#
# argument "times" is an array of [start, finish] time arrays
#
# COMPLEXITY: O(nlogn) (depending on sorting algorithm used - the greedy algo itself is O(n))

def activity_selection(times)

  best_set = []

  reserved_until = 0
  times.sort_by(&:last).each do |time|
    if time.first > reserved_until
      reserved_until = time.last
      best_set << time
    end
  end

  return best_set
end