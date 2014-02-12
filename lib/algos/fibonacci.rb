require 'matrix'

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

# a cleaner bottom-up DP solution that doesn't use memoization (less overhead and still O(n))

def iterative_fibonacci(number)
  numbers = [1,1]

  3.upto(number) do
    numbers << numbers[-1] + numbers[-2]
  end

  return numbers.last
end

#super cleverness - this can be done O(logn) using a matrix and exponentiation by squaring

def matrix_fibonacci(number)
  matrix = Matrix[[1,1],[1,0]]

  (matrix ** (number - 1)) [0,0]
end