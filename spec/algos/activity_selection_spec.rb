require_relative '../../lib/algos/activity_selection'

describe 'activity selection' do

  it 'returns the maximum number of activities' do
    expect(activity_selection([[5, 8], [1, 6], [2, 4], [1, 5], [7, 8], [4, 9], [5,7], [7,9], [5,6]])).
        to eq [[2, 4], [5,6], [7, 8]]
  end

end