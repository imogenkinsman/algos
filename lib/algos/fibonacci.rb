# Uses recursion to find the nth number in the fibonacci sequence.
#
# Complexity: O(2^n)

def fibonacci(number)
  return (number <= 2 ? 1 : fibonacci(number - 1) + fibonacci(number - 2))
end
