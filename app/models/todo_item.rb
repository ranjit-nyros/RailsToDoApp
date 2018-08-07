class TodoItem < ApplicationRecord
  belongs_to :todo_list, optional: true

  # if the todo_item is completed then the completed_at field should not be blank
  def completed?
    !completed_at.blank? 
    # throw(:abort)
  end

end
