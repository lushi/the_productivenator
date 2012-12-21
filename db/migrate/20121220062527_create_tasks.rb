class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.integer :task_etc
      t.string :reward
      t.integer :reward_etc

      t.timestamps
    end
  end
end
