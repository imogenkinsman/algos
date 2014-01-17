require_relative '../../lib/algos/radix_sort'

describe 'radix sort' do

  it 'sorts an array' do
    array = [1,3,8,9,0,0,8,7,1,6]
    expect(radix_sort(array)).to eq [0,0,1,1,3,6,7,8,8,9]
  end

end
