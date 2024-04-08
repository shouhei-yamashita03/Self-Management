class AddTaskDateToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :task_date, :date
  end
end
