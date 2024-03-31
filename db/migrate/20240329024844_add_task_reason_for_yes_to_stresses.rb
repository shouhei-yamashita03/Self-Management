class AddTaskReasonForYesToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :task_reason_for_yes, :text
  end
end
