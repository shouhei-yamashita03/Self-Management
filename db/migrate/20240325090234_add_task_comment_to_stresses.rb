class AddTaskCommentToStresses < ActiveRecord::Migration[5.1]
  def change
    add_column :stresses, :task_comment, :text
  end
end
