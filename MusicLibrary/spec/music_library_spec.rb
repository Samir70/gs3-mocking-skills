require "music_library"

RSpec.describe MusicLibrary do
  it "initialises with an empty track list" do
    ml = MusicLibrary.new
    expect(ml.all).to eq []
  end

  it "can add tracks to the list" do
    ml = MusicLibrary.new
    track_1 = double(:track)
    track_2 = double(:track)
    ml.add(track_1)
    expect(ml.all).to eq [track_1]
    ml.add(track_2)
    expect(ml.all).to eq [track_1, track_2]
  end

  context "searching the track list" do
    it "returns whole track list if keyword is empty string" do
      ml = MusicLibrary.new
      track_1 = double(:track, matches?: true)
      track_2 = double(:track, matches?: false)
      track_3 = double(:track, matches?: true)
      ml.add(track_1)
      ml.add(track_2)
      ml.add(track_3)
      expect(ml.search("")).to eq [track_1, track_2, track_3]
    end
    it "can filter track list by keyword" do
      ml = MusicLibrary.new
      track_1 = double(:track, matches?: true)
      track_2 = double(:track, matches?: false)
      track_3 = double(:track, matches?: true)
      ml.add(track_1)
      ml.add(track_2)
      ml.add(track_3)
      expect(ml.search("anything")).to eq [track_1, track_3]
    end
  end
end
