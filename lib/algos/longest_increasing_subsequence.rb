def solve(sequence)
  longest_length = [] # store longest sequence at position i
  last_index = [] # store indexes visited in the chain

  sequence.each_with_index do |number, index|
    longest_length[index] = 1 # it must contain at least one
    0.upto(index - 1) do |prior_index|
      if sequence[prior_index] <= number && longest_length[index] <= longest_length[prior_index]
        longest_length[index] = longest_length[prior_index] + 1
        last_index[index] = prior_index
      end
    end
  end

  longest_length.max
end
