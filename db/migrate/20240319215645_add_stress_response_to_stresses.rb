class AddStressResponseToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :stress_response, :string
  end
end
