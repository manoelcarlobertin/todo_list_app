class TaskItem < ApplicationRecord
  belongs_to :task_list, optional: true, inverse_of: :task_items
  belongs_to :user, though: :task_list, optional: true
end
