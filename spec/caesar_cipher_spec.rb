require './lib/caesar_cipher.rb'

describe CaesarCipher do
  describe "#caesar_cipher" do
    it "returns the shifted letter by -2" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('a', -2)).to eql('y')
      expect(caesar.caesar_cipher('b', -2)).to eql('z')
      expect(caesar.caesar_cipher('c', -2)).to eql('a')
    end

    it "returns the shifted letter by +2" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('a', +2)).to eql('c')
      expect(caesar.caesar_cipher('b', +2)).to eql('d')
      expect(caesar.caesar_cipher('c', +2)).to eql('e')
    end

    it "returns the shifted text by +23" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ', +23)).to eql('XYZABCDEFGHIJKLMNOPQRSTUVW')
    end

    it "returns the shifted text by -4" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('EXXEGOEXSRGI', -4)).to eql('ATTACKATONCE')
    end

    it "returns the shifted text by -5" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('N mtuj dtz qnpji ny!', -5)).to eql('I hope you liked it!')
    end

    it "returns the shifted text by +5" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('I hope you liked it!', +5)).to eql('N mtuj dtz qnpji ny!')
    end
  end
end
