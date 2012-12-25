FactoryGirl.define do
  factory :task do
    task     "Work through Ruby Koans"
    task_etc 120
    reward "Nap"
    reward_etc 30
  end
end