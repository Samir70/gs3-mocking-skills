require "string_repeater"

RSpec.describe StringRepeater do
    it "repeats a string input from the terminal" do
        io = double :fake_terminal
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(io).to receive(:puts).with("Please enter a string").ordered
        expect(io).to receive(:gets).and_return("Please ").ordered
        expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(io).to receive(:gets).and_return("5").ordered
        expect(io).to receive(:puts).with("Here is your result:").ordered
        expect(io).to receive(:puts).with("Please "*5).ordered
        str_rep = StringRepeater.new(io)
        str_rep.run
    end
    it "raises error if not given a number" do
        io = double :fake_terminal
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(io).to receive(:puts).with("Please enter a string").ordered
        expect(io).to receive(:gets).and_return("Please ").ordered
        expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(io).to receive(:gets).and_return("xyz").ordered
        str_rep = StringRepeater.new(io)
        expect{str_rep.run}.to raise_error "I sa-aid: ENTER A NUMBER!!!!"
    end
end