json.extract! task_item, :id, :description, :done, :task_list_id, :created_at, :updated_at
json.url task_item_url(task_item, format: :json)
