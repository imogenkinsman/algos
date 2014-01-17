require_relative '../../../lib/algos/sorting/merge_sort'

describe "Merge Sort" do

  it "sorts an unsorted even-sized array" do
    ary = [3, 2, 5, 4, 1, 6]
    expect(merge_sort(ary)).to eq ary.sort
  end

  it "sorts an unsorted odd-sized array" do
    ary = [3, 2, 5, 1, 7, 6]
    expect(merge_sort(ary)).to eq ary.sort
  end

end
