class AddReasonForNoToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :reason_for_no, :text
  end
end
