require "greeter"

RSpec.describe Greeter do
  it "greets the user" do
    io = double :io
    expect(io).to receive(:puts).with("What is your name?")
    expect(io).to receive(:gets).and_return("Kay")
    expect(io).to receive(:puts).with("Hello, Kay!")

    greeter = Greeter.new(io)
    greeter.greet
  end
end

# If we want to run `Greeter` for real, we do it like this
# greeter = Greeter.new(Kernel)
# greeter.greet
