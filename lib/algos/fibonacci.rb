# Uses recursion to find the nth number in the fibonacci sequence.
#
# Complexity: O(2^n)

def fibonacci(number)
  return (number <= 2 ? 1 : fibonacci(number - 1) + fibonacci(number - 2))
end

# p.s. that algorithm is terrible. Let's do it better with memoization!

class DynamicFib

  def initialize
    @memo = {}
    @memo[1] = 1
    @memo[2] = 1
  end

  def fibonacci(number)
    return (@memo[number] ||= (fibonacci(number - 1) + fibonacci(number - 2)))
  end

end
