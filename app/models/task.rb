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

class Task < ActiveRecord::Base
  attr_accessible :task, :task_etc, :reward, :reward_etc


  validates :task, presence: true, length: { maximum: 140 }
  validates :task_etc, presence: true
  validates :reward, presence: true, length: { maximum: 140 }
  validates :reward_etc, presence: true
end

#class Summary
	#def initialize(tasks)
		#@sum = get_sum(tasks)
	#end

	#def get_sum(tasks)
	#	sum = 0
	#	tasks.each do |task|
	#		sum += task_etc
	#	end
	#end
#end