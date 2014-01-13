require_relative '../../lib/data_strucs/linked_list'

describe 'LinkedList' do
  before(:each) do
    @ll = LinkedList.new
    3.upto(5) do |i|
      @ll.insert(i)
    end
  end

  it "adds nodes" do
    expect(@ll.head.value).to eq 3
    expect(@ll.tail.value).to eq 5
  end

  #it "prints its values" do
  #end
  #
  #it "reverses! :D" do
  #  @ll.reverse
  #  expect(@ll.head.value).to eq 5
  #  expect(@ll.tail.value).to eq 3
  #end

end
