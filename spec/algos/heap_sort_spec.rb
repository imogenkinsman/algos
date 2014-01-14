require_relative '../../lib/algos/heap_sort'

describe 'heap sort' do

  it 'returns a sorted array' do
    array = [4,2,3,6,5,1,7]
    expect(heap_sort(array)).to eq [1,2,3,4,5,6,7]
  end

end
