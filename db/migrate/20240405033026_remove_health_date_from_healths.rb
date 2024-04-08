class RemoveHealthDateFromHealths < ActiveRecord::Migration[5.1]
  def change
    remove_column :healths, :health_date, :date
  end
end
