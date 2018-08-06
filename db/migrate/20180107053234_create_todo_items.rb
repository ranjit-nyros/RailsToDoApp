class CreateTodoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.references :todo_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
