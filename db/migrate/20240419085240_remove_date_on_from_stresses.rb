class RemoveDateOnFromStresses < ActiveRecord::Migration[5.1]
  def change
    remove_column :stresses, :date_on, :date
  end
end
