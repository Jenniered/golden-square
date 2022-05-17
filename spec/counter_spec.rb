require 'counter'

RSpec.describe Counter do
  it "returns the total of the counter when add 5" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "returns the total of the counter when we add two numbers" do
    counter = Counter.new
    counter.add(4)
    counter.add(9)
    result = counter.report
    expect(result).to eq "Counted to 13 so far."
  end
end
