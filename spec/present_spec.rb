require 'present'

RSpec.describe Present do
  it "it wraps and unwraps a present" do
    present = Present.new
    present.wrap("book")
    result = present.unwrap
    expect(result).to eq "book"
  end
  context "when the present is already wrapped" do
    it "fails" do
      present = Present.new
      present.wrap("bike")
      expect { present.wrap("bike") }.to raise_error "A bike has already been wrapped."
    end
  end
  context "when the present hasn't been wrapped" do
    it "fails" do
      present = Present.new
      expect { present.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end
end