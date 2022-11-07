require 'music_library'
require 'track'

RSpec.describe "integration" do
    xit "returns a list of tracks that match a keyword" do
        ml = MusicLibrary.new
        t1 = Track.new("Money", "Pink Floyd")
        t2 = Track.new("Hysteria", "Muse")
        t3 = Track.new("Pink Vinci", "Mona Lisa")
        expect(ml.search("Mon")).to eq [t1, t3]
    end
end