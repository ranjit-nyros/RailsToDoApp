class AddCompletedAtToTodoItems < ActiveRecord::Migration[4.2]
  def change
    add_column :todo_items, :completed_at, :datetime
  end
end
