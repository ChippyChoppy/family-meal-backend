class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.string :allergen
      t.string :photo_url
      t.string :price
      t.belongs_to :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end
