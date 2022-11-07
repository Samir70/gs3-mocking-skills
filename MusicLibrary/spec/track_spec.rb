require "track"

RSpec.describe Track do
  it "initialises with title and artist" do
    t = Track.new("Money", "Pink Floyd")
    expect(t.title).to eq "Money"
    expect(t.artist).to eq "Pink Floyd"
  end

  describe "#matches?" do
    it "matches an empty string" do
      t = Track.new("Money", "Pink Floyd")
      expect(t.matches?("")).to eq true
    end
    it "matches a string in title, regardless of case" do
      t = Track.new("Money", "Pink Floyd")
      expect(t.matches?("mon")).to eq true
      expect(t.matches?("EY")).to eq true
    end
    it "matches a string in artist, regardless of case" do
      t = Track.new("Money", "Pink Floyd")
      expect(t.matches?("pin")).to eq true
      expect(t.matches?("OY")).to eq true
    end
  end
end
