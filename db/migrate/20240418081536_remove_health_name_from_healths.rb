class RemoveHealthNameFromHealths < ActiveRecord::Migration[5.1]
  def change
    remove_column :healths, :health_name, :string
  end
end
