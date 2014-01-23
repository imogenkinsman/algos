def solve(sequence)
  longest_length = [] # store longest sequence at position i
  last_index = [] # store indexes visited in the chain

  sequence.each_with_index do |number, index|
    longest_length[index] = 1 # it must contain at least one
    0...index do |prior_index|
      if sequence[prior_index] <= number && longest_length[index] <= longest_length[prior_index]
        longest_length[index] = longest_length[prior_index] + 1
        last_index[index] = prior_index
      end
    end
  end

  #max_length = longest_length.max
  #index_of_max_length = longest_length.find_index(max_length)
  #
  #result_array = []
  #while index_of_max_length > 0
  #  result_array.unshift(sequence[index_of_max_length])
  #  index_of_max_length = last_index[index_of_max_length]
  #end
  #result_array
  puts longest_length.max
end
