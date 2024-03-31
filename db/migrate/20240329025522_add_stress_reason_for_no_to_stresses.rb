class AddStressReasonForNoToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :stress_reason_for_no, :text
  end
end
