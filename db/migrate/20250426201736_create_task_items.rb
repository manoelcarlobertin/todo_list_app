class CreateTaskItems < ActiveRecord::Migration[8.0]
  def change
    create_table :task_items do |t|
      t.string :description
      t.boolean :done
      t.references :task_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
