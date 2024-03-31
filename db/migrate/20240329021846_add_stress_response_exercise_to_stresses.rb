class AddStressResponseExerciseToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :stress_response_exercise, :boolean
  end
end
