class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
