require 'a'

describe "#print_hello" do
  it "should not take parameters" do
    expect(method(:print_hello).arity).to eq(0)
  end

  let(:a) { print_hello }

  it "should not return empty" do
    expect(a).not_to be_nil
    expect(a).not_to eq("")
  end

  it "should not be a number" do
    expect(a).not_to be_kind_of(Numeric)
  end

  it "should be a string" do
    expect(a).to be_kind_of(String)
  end

end
