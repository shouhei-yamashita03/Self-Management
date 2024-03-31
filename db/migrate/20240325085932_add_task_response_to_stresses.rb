class AddTaskResponseToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :task_response, :string
  end
end
