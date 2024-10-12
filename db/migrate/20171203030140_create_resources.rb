class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :category
      t.string :description
      t.string :format
      t.string :location
      t.string :url, default: 'no_url_given'
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
