require 'task_formatter'

RSpec.describe TaskFormatter do
    it "initialises" do
        task = double(:task)
        tf = TaskFormatter.new(task)
        expect(tf).to be
    end
    it ('formats an incomplete task') do
        task = double(:task, completed: false, title:"Wash the car")
        tf = TaskFormatter.new(task)
        expect(tf.format).to eq "- [ ] Wash the car"
    end
    it ('formats a complete task') do
        task = double(:task, completed: true, title:"Wash the car")
        tf = TaskFormatter.new(task)
        expect(tf.format).to eq "- [x] Wash the car"
    end
end