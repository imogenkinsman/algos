require_relative '../../lib/algos/radix_sort'

describe 'radix sort' do

  it 'sorts an array' do
    array = [1,3,8,9,0,0,8,7,1,6]
    expect(radix_sort(array)).to eq [0,0,1,1,3,6,7,8,8,9]
  end

  it 'sorts an array with multiple digits' do
    array = [2,1,34,21,5,3,77,2,45,102,23,21]
    expect(radix_sort(array)).to eq [1, 2, 2, 3, 5, 21, 21, 23, 34, 45, 77, 102]
  end

end
