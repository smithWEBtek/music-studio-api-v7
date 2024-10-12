class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
