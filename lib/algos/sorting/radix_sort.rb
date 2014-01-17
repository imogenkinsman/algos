# sorts an array
#
# - sorts from least significant digit to most significant digit, in a loop
# - continues the trend of "hey, this totally sorts in linear time - but it's super inefficient in terms of space!"
# - this implementation doesn't support negative integers, but it could be modified to do so
#
# trivia - old card-sorting machines used this sorting algorithm
#
# PERFORMANCE: O(n)

def radix_sort(array)

  digits = Math.log10(array.max).floor

  0.upto(digits) do |digit|
    buckets = Array.new(10) { Array.new }
    array.each do |value|
      digit_value = value / (10**digit) % 10
      buckets[digit_value] << value
    end

    array = []
    buckets.each { |bucket| array += bucket }
  end
  array
end
