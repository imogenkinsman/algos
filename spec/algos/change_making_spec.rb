require_relative '../../lib/algos/change_making'

describe 'change making algo' do

  it 'finds the least number of coins' do
    expect(least_coins(48, [1, 5, 10, 25, 50])).to eq 6
    expect(least_coins(48, [1, 7, 24, 42])).to eq 2
    expect(least_coins(35, [1, 3, 16, 30, 50])).to eq 3
  end

end
