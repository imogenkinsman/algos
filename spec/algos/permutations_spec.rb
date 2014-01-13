# apologies for the horrible descriptions, this is fast and hacky testing

require_relative '../../lib/algos/permutations'

describe "permutations" do
  before(:all) do
    @solution = %w(abbc abcb abbc abcb acbb acbb babc bacb bbac bbca bcab bcba babc
               bacb bbac bbca bcab bcba cabb cabb cbab cbba cbab cbba)
  end

  it "should be created from my ruby magic method" do
    expect(permutations("abbc").sort).to eq @solution.sort
  end

  it "should be created from my_permutations" do
    expect(my_permutations("abbc")).to eq @solution
  end

  it "should be created from optimized_permutations" do
    expect(optimized_permutations("abbc").sort).to eq @solution.uniq.sort
  end

end
