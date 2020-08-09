require './caesarcipher'
describe "#cipher" do
  it "shifts abc, 1 to bcd" do
    expect(cipher('abc', 1)).to eql('bcd')
  end
  
  it "shifts greater than 26 digits" do
    expect(cipher('a', 27)).to eql('b')
  end

  it "ignores negative shift" do
    expect(cipher('b', -1)).to eql('b')
  end
end