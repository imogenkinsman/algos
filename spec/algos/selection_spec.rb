require_relative '../../lib/algos/selection'

describe 'quick select' do

  it 'finds the 3rd largest element in an array' do
    expect(quick_select([6,4,7,3,5,2,8,5,8,5,7,4,7,4,6,7,5,4], 2)). to eq 4
  end

end
