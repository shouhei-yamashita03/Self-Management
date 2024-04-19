class RemoveReportNameFromReports < ActiveRecord::Migration[5.1]
  def change
    remove_column :reports, :report_name, :string
  end
end
