class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.bigint :report_id
      t.string :report_title
      t.string :report_name
      t.text :report_detail
      t.text :report_comment
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :reports, [:user_id, :created_at]
  end
end
