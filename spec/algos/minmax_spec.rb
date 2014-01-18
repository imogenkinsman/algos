require_relative '../../lib/algos/minmax'

describe 'minmax' do

  it 'finds the min and max for an array' do
    expect(minmax [4,-1,2,6,4,7,4,8,3,1,-2,0,4,3]).to eq [-2, 8]
  end

end
