class CreateLessonResources < ActiveRecord::Migration[5.1]
  def change
    create_table :lesson_resources do |t|
      t.integer :resource_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
