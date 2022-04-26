require './lib/alphabet'

RSpec.describe Alphabet do
  before :each do
    @alphabet = Alphabet.new
  end

  it "exists" do
    expect(@alphabet).to eq(Alphabet)
  end

end
