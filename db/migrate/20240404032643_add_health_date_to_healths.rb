class AddHealthDateToHealths < ActiveRecord::Migration[5.1]
  def change
    add_column :healths, :health_date, :date
  end
end
