require "time_error"

RSpec.describe TimeError do
  it "returns the error in time of day" do
    time_source = double(:fake_time)
    te = TimeError.new(time_source)
    expect(time_source).to receive(:get)
                             .with(URI("https://worldtimeapi.org/api/ip"))
                             .and_return('{"utc_datetime":"2022-11-14T11:56:28.477975+00:00"}')
    time = Time.new(2022, 11, 14, 11, 56, 28)
    expect(te.error(time)).to eq 0.477975
  end
end
