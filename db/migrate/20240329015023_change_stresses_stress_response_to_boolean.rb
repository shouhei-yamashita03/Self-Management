class ChangeStressesStressResponseToBoolean < ActiveRecord::Migration[5.1]
  def up
    change_column :stresses, :stress_response, :boolean, using: "stress_response::boolean"
  end

  def down
    change_column :stresses, :stress_response, :string
  end
end
