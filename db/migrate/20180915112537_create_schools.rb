class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
