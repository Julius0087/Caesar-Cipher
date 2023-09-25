require './caesar-cipher'

describe "#caesar_cipher" do
  it "returns an encrypted string using caesar's cipher" do
    expect(caesar_cipher('House', 3)).to eql('Krxvh')
  end

  it "returns the expected encryption even when letters go beyond 'z'" do
    expect(caesar_cipher('Zimbabwe', 4)).to eql('Dmqfefai')
  end

  it "returns the expected encryption, keeps the case and doesn't modify special symbols" do
    expect(caesar_cipher('Jack Sparrow?!', 5)).to eql('Ofhp Xufwwtb?!')
  end

  it "returns the expected encryption, keeping the numbers" do
    expect(caesar_cipher('Jack00123', 6)).to eql('Pgiq00123')
  end
end
