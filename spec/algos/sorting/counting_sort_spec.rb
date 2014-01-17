require_relative '../../../lib/algos/sorting/counting_sort'

describe 'counting sort' do

  it 'sorts an array' do
    array = [3,2,5,4,1,6,0,6,3,5]
    expect(counting_sort(array, 6)).to eq [0,1,2,3,3,4,5,5,6,6]
  end

end
