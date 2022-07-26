require 'avengers'

describe "Avengers" do
  let(:avengers) { Avengers.avenger? }

  it "should return true or false" do
    expect(avengers).to be_in([true, false])
  end

  let(:message) { Avengers.message }
  it 'should return a message' do
    expect(message).to be_kind_of(String)
  end

end
