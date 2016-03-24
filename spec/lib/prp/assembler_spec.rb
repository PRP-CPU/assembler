require "spec_helper"

describe "PRP::Assembler" do
  it "should be testable" do
    expect(PRP::Assembler::Identity.name).to eq("prp-assembler")
  end
end
