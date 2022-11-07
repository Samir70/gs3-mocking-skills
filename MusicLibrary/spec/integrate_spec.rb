require "music_library"
require "track"

RSpec.describe "integration" do
  it "adds and lists tracks" do
    ml = MusicLibrary.new
    t1 = Track.new("Money", "Pink Floyd")
    t2 = Track.new("Hysteria", "Muse")
    t3 = Track.new("Pink Vinci", "Mona Lisa")
    ml.add(t1)
    ml.add(t2)
    ml.add(t3)
    expect(ml.all).to eq [t1, t2, t3]
  end
  context "searching tracks" do
    it "returns all tracks when keyword is empty string" do
      ml = MusicLibrary.new
      t1 = Track.new("Money", "Pink Floyd")
      t2 = Track.new("Hysteria", "Muse")
      t3 = Track.new("Pink Vinci", "Mona Lisa")
      ml.add(t1)
      ml.add(t2)
      ml.add(t3)
      expect(ml.search("")).to eq [t1, t2, t3]
    end
    it "returns a list of tracks that match a keyword" do
      ml = MusicLibrary.new
      t1 = Track.new("Money", "Pink Floyd")
      t2 = Track.new("Hysteria", "Muse")
      t3 = Track.new("Pink Vinci", "Mona Lisa")
      ml.add(t1)
      ml.add(t2)
      ml.add(t3)
      expect(ml.search("Mon")).to eq [t1, t3]
    end
    it "returns an empty list when no track has a match" do
      ml = MusicLibrary.new
      t1 = Track.new("Money", "Pink Floyd")
      t2 = Track.new("Hysteria", "Muse")
      t3 = Track.new("Pink Vinci", "Mona Lisa")
      ml.add(t1)
      ml.add(t2)
      ml.add(t3)
      expect(ml.search("abcde")).to eq []
    end
  end
end
