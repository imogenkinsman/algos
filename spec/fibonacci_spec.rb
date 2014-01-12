require_relative '../lib/fibonacci'

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

  it "should find the 4th fibonacci number" do
    expect(fibonacci(6)).to eq 8
  end

end
