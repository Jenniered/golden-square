require 'string_builder'

RSpec.describe StringBuilder do 
  it "adds strings together" do
    string_builder = StringBuilder.new
    string_builder.add("hello")
    string_builder.add(" world")
    result = string_builder.output
    expect(result).to eq "hello world"
  end

  it "returns the string and the length of the string" do
    string_builder = StringBuilder.new
    string_builder.add("Thank you!")
    output_result = string_builder.output
    length_result = string_builder.size
    expect(output_result).to eq "Thank you!"
    expect(length_result).to eq 10
  end

end