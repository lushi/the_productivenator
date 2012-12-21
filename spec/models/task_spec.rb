# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  task       :string(255)
#  task_etc   :integer
#  reward     :string(255)
#  reward_etc :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Task do

	before do
		@task = Task.new(task: "Example task", task_etc: 60, reward: "Example reward", reward_etc: 15) 
	end

	subject { @task }

	it { should respond_to (:task) }
	it { should respond_to (:task_etc) }	
	it { should respond_to (:reward) }
	it { should respond_to (:reward_etc) }

	it { should be_valid }

	describe "when task is not present" do
		before { @task.task = " " }
		it { should_not be_valid }
	end

	describe "when task_etc is not present" do
		before { @task.task_etc = " " }
		it { should_not be_valid }
	end

	describe "when reward is not present" do
		before { @task.reward = " " }
		it { should_not be_valid }
	end

	describe "when reward_etc is not present" do
		before { @task.reward_etc = " " }
		it { should_not be_valid }
	end

	describe "when task is too long" do
		before { @task.task = "a" * 141 }
		it { should_not be_valid }
	end

	describe "when reward is too long" do
		before { @task.reward = "a" * 141 }
		it { should_not be_valid }
	end
end


