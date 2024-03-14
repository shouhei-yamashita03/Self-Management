class CreateHealths < ActiveRecord::Migration[5.1]
  def change
    create_table :healths do |t|
      t.bigint :health_id
      t.string :health_title
      t.time :wake_up_time_at
      t.time :bedtime_at
      t.string :stature
      t.string :body_weight
      t.string :health_name
      t.text :health_detail
      t.text :health_comment
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :healths, [:user_id, :created_at]
  end
end
