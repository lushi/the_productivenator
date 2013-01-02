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
  belongs_to :user
  
  validates :task, presence: true, length: { maximum: 140 }
  validates :task_etc, presence: true
  validates :reward, presence: true, length: { maximum: 140 }
  validates :reward_etc, presence: true
  validates :user_id, presence: true
end
