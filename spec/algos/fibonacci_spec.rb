require_relative '../../lib/algos/fibonacci'

describe "fibonacci" do

  it "should find the 3rd fibonacci number" do
    expect(fibonacci(3)).to eq 2
  end

  it "should find the 4th fibonacci number" do
    expect(fibonacci(4)).to eq 3
  end

  it "should find the 5th fibonacci number" do
    expect(fibonacci(5)).to eq 5
  end

  it "should find the 6th fibonacci number" do
    expect(fibonacci(6)).to eq 8
  end

end

describe 'dp_fibonacci' do
  before(:each) do
    @fib = DynamicFib.new
  end

  it "should find the 3rd fibonacci number" do
    expect(@fib.fibonacci(3)).to eq 2
  end

  it "should find the 4th fibonacci number" do
    expect(@fib.fibonacci(4)).to eq 3
  end

  it "should find the 5th fibonacci number" do
    expect(@fib.fibonacci(5)).to eq 5
  end

  it "should find the 6th fibonacci number" do
    expect(@fib.fibonacci(6)).to eq 8
  end

end

describe 'iterative_fibonacci' do

  it "should find the 3rd fibonacci number" do
    expect(iterative_fibonacci(3)).to eq 2
  end

  it "should find the 4th fibonacci number" do
    expect(iterative_fibonacci(4)).to eq 3
  end

  it "should find the 5th fibonacci number" do
    expect(iterative_fibonacci(5)).to eq 5
  end

  it "should find the 6th fibonacci number" do
    expect(iterative_fibonacci(6)).to eq 8
  end

end