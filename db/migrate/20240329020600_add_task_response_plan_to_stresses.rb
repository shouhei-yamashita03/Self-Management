class AddTaskResponsePlanToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :task_response_plan, :boolean
  end
end
