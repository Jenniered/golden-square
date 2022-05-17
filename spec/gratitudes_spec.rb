require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns template prompt" do
    gratitudes = Gratitudes.new
    result = gratitudes.format
    expect(result).to eq "Be grateful for: "
  end

  it "returns one item list" do
    gratitudes = Gratitudes.new
    gratitudes.add("sunny weather")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: sunny weather"
  end

  context "if more than one gratitude entered" do
    it "returns multiple item list" do
      gratitudes = Gratitudes.new
      gratitudes.add("the dog")
      gratitudes.add("biscuits")
      gratitudes.add("sunny weather")
      result = gratitudes.format
      expect(result).to eq "Be grateful for: the dog, biscuits, sunny weather"
    end
  end 
end
