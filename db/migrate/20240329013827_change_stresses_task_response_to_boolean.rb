class ChangeStressesTaskResponseToBoolean < ActiveRecord::Migration[5.1]
  def up
    change_column :stresses, :task_response, :boolean, using: "task_response::boolean"
  end

  def down
    change_column :stresses, :task_response, :string
  end
end
