require_relative '../../lib/algos/rod_cutting'

describe 'DynamicCut' do

  it 'solves the rod cutting problem' do
    cut = DynamicCut.new( 1 => 1, 2 => 5, 3 => 8, 4 => 9, 5 => 10, 6 => 17, 7 => 17, 8 => 20 )
    expect(cut.solve(4)).to eq 10
  end

end

describe 'BottomUpDynamicCut' do

  it 'solves the rod cutting problem' do
    cut = BottomUpDynamicCut.new( 1 => 1, 2 => 5, 3 => 8, 4 => 9, 5 => 10, 6 => 17, 7 => 17, 8 => 20 )
    expect(cut.solve(4)).to eq 10
  end

end
