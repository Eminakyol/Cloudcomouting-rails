class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :category
      t.float :price
      t.text :description
      t.string :image_url
      t.timestamps
    end
  end
end
