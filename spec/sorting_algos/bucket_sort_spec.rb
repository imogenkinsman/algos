require_relative '../../lib/sorting_algos/bucket_sort'

describe 'bucket sort' do

  it 'sorts an array' do
    array = [1,3,8,9,0,0,8,7,1,6]
    expect(bucket_sort(array)).to eq [0,0,1,1,3,6,7,8,8,9]
  end

end
