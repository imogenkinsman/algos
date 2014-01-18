# CLRS section 9.1 - optimal minmax search
#
# Finds the minimum and maximum value of an array in the least number of comparisons

def minmax(array)

  min = max = array.first

  array.each_slice(2) do |x, y|
    if x > y
      min = [min, y].min
      max = [max, x].max
    else
      min = [min, x].min
      max = [max, y].max
    end
  end

  [min, max]
end
