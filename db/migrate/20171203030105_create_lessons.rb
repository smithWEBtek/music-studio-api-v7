class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.date :date
      t.string :notes
      t.integer :teacher_id, default: 1
      t.integer :student_id, default: 1

      t.timestamps
    end
  end
end
