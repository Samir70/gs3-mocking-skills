require 'diary'

RSpec.describe Diary do
    it "initialises with readable contents" do
        d = Diary.new("readable contents")
        expect(d.read).to eq "readable contents"
    end
end