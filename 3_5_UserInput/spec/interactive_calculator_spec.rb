require "interactive_calculator"

RSpec.describe InteractiveCalculator do
  it "takes two numbers from user and gives difference" do
    io = double :fake_terminal
    a = rand(100)
    b = rand(100)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return(a.to_s).ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return(b.to_s).ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("#{a} - #{b} = #{a - b}").ordered
    int_cal = InteractiveCalculator.new(io)
    int_cal.run
  end
end
