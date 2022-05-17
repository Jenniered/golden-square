require 'greet.rb'

RSpec.describe "greet method" do
  it "returns Hello and name given" do
    expect(greet("John")).to eq "Hello, John!"
  end
end