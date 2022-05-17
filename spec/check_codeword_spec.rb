require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns correct if the codeword is correct" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end

  it "returns close when first and last letters are correct" do
    expect(check_codeword("house")).to eq "Close, but nope."
  end

  it "returns wrong if codeword is not correct or close to being correct" do
    expect(check_codeword("dog")).to eq "WRONG!"
  end
end