require_relative '../../lib/data_strucs/heap'

describe "max-heap" do

  it "should heapify correctly" do
    heap = MaxHeap.new([1,2,3])
    expect(heap.heap).to eq [3,2,1]

    heap = MaxHeap.new([5,2,3,-21,7,33])
    expect(heap.heap).to eq [33, 7, 5, -21, 2, 3]
  end

end
