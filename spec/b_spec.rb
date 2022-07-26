require 'b'

describe "Odd numbers" do
  let(:b) { loop_odd }

  it "should be odd" do
    expect(b).to all( be_odd )
  end


  it "should not be even" do
    expect(b).to_not respond_to(:odd?)
  end

  it "should have numbers between 1 and 100" do
    expect(b).to include(1..100)
    expect(b).not_to include(100..1000)
  end

  it "should not have numbers above 100" do
    expect(b).not_to include(0,101,102,103,104)
  end
end
