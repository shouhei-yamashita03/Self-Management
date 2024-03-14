class AddStartTimeToHealths < ActiveRecord::Migration[5.1]
  def change
    add_column :healths, :start_time, :datetime
  end
end
