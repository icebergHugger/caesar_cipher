require "./lib/caesar.rb"

describe CaesarCipher do
  describe "#cipher" do
    it "cipher single word" do
      caesar = CaesarCipher.new
      expect(caesar.cipher("hello", 4)).to eql("lipps")
    end
    
    it "cipher two words" do
      caesar = CaesarCipher.new
      expect(caesar.cipher("hello dave", 4)).to eql("lipps hezi")
    end
    
    it "keep catnation in check" do
      caesar = CaesarCipher.new
      expect(caesar.cipher("hello Dave", 4)).to eql("lipps Hezi")
    end
    
    it "can go out of bounds of alphabet" do
      caesar = CaesarCipher.new
      expect(caesar.cipher("hello zep", 4)).to eql("lipps dit")
    end
  end
end
