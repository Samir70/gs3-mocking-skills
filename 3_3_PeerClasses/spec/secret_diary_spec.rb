require "secret_diary"

RSpec.describe SecretDiary do
  it "initialises with a diary set to locked" do
    fake_d = double(:Fake_d)
    sd = SecretDiary.new(fake_d)
    expect { sd.read }.to raise_error "Go away!"
  end

  it "can unlock and read its diary" do
    fake_d = double(:Fake_d)
    expect(fake_d).to receive(:read).and_return("readable contents")
    sd = SecretDiary.new(fake_d)
    sd.lock
    sd.unlock
    expect(sd.read).to eq "readable contents"
  end
  it "can relock its diary" do
    fake_d = double(:Fake_d)
    allow(fake_d).to receive(:read).and_return("readable contents")
    sd = SecretDiary.new(fake_d)
    sd.unlock
    sd.unlock #someone might write method as a toggle
    sd.lock
    expect { sd.read }.to raise_error "Go away!"
  end
end
