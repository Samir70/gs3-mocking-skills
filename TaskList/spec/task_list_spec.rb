require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  context "returning a list of tasks" do
    it "returns an empty list if no tasks added" do
      task_list = TaskList.new
      expect(task_list.all).to eq []
    end
    it "returns list of tasks when two tasks given" do
      task_list = TaskList.new
      t1 = double(:Task)
      t2 = double(:Task)
      task_list.add(t1)
      task_list.add(t2)
      expect(task_list.all).to eq [t1, t2]
    end
  end

  describe "#all_complete?" do
    it "returns false if one of the tasks is not marked complete" do
      task_list = TaskList.new
      t1 = double(:Task, complete?: true)
      t2 = double(:Task, complete?: false)
      task_list.add(t1)
      task_list.add(t2)
      expect(task_list.all_complete?).to eq false
    end
    it "returns true if all of the tasks are marked complete" do
      task_list = TaskList.new
      t1 = double(:Task, complete?: true)
      t2 = double(:Task, complete?: true)
      task_list.add(t1)
      task_list.add(t2)
      expect(task_list.all_complete?).to eq true
    end
  end
end
