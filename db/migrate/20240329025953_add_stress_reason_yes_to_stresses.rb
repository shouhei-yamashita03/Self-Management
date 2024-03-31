class AddStressReasonYesToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :stress_reason_yes, :text
  end
end
