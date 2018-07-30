class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  # if the todo_item is completed then the completed_at field should not be blank
  def completed?
    !completed_at.blank?
  end

end
