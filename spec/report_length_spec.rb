require 'report_length'

RSpec.describe "report_length method" do
  it "returns '5 characters long' if 'horse' is passed" do
    expect(report_length("horse")).to eq "This string was 5 characters long."
  end
  it "returns '317 characters long' if paragraph is passed" do
    paragraph = "A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long."
    expect(report_length(paragraph)).to eq "This string was 317 characters long."
  end
end