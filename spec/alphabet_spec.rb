require './lib/alphabet'

RSpec.describe Alphabet do
  before :each do
    @alphabet = Alphabet.new
  end

  it "exists" do
    expect(@alphabet).to eq(Alphabet)
  end

  it "has attributes" do
    expect(@alphabet.alpha).to be_a Hash
  end
end
