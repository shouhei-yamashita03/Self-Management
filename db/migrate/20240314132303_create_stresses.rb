class CreateStresses < ActiveRecord::Migration[5.1]
  def change
    create_table :stresses do |t|
      t.bigint :stress_id
      t.text :stress_comment
      t.date :date_on
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :stresses, [:user_id, :created_at]
  end
end
