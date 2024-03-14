class AddStartTimeToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :start_time, :datetime
  end
end
