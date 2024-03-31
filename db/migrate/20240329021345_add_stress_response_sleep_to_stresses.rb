class AddStressResponseSleepToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :stress_response_sleep, :boolean
  end
end
