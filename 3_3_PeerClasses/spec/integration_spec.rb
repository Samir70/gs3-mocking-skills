require "diary"
require "secret_diary"

RSpec.describe "integration" do
  it "SecretDiary initialises with a Diary set to locked" do
    d = Diary.new("Contents ....")
    sd = SecretDiary.new(d)
    expect { sd.read }.to raise_error "Go away!"
  end

  it "can unlock and read its diary" do
    d = Diary.new("readable contents")
    sd = SecretDiary.new(d)
    sd.unlock
    expect(sd.read).to eq "readable contents"
  end

  it "can relock its diary" do
    d = Diary.new("readable contents")
    sd = SecretDiary.new(d)
    sd.unlock
    sd.unlock #someone might write method as a toggle
    sd.lock
    expect { sd.read }.to raise_error "Go away!"
  end
end
