require_relative '../lib/kadane'

describe "Kadane's algorithm" do

  it "determines max subarray from an array with odd elements" do
    ary = [5, 6, -2, 3, 24, -1, -2, 6, -7, 13, -22, 5, 7, 1]
    expect(kadane(ary)).to eq [0, 9, 45]
  end

  it "determines max subarray from an array with even elements" do
    ary = [5, 6, -2, 3, 24, -1, -2, 6, -7, 13, -22, 5, 7]
    expect(kadane(ary)).to eq [0, 9, 45]
  end

  it "works when the max subarray is in the middle" do
    ary = [-3, 5, -1, 5, 3, 2, -20, -12]
    expect(kadane(ary)).to eq [1, 5, 14]
  end

  it "works when the max subarray is in the first half" do
    ary = [1, 3, 12, -10, 3, -2, 1, 0]
    expect(kadane(ary)).to eq [0, 2, 16]
  end

  it "works when the max subarray is in the second half" do
    ary = [1, 2, 3, 4, -30, 10, 3, 5, -2]
    expect(kadane(ary)).to eq [5, 7, 18]
  end

end
