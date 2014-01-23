require_relative '../../lib/algos/longest_increasing_subsequence'

describe 'the algorithm' do

  it 'solves the longest increasing subsequence problem' do
    expect(solve([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15])).to eq [0, 2, 6, 9, 13, 15]
  end

end
