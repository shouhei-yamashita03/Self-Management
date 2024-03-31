class AddStressReasonNoToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :stress_reason_no, :text
  end
end
