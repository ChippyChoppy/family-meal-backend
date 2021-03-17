class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :password
      t.string :email
      t.text   :bio
      t.string :neighborhood
      t.string :address
      t.string :hours
      t.string :cuisine
      t.string :price_range
      t.string :profile_photo
      t.string :home_photo

      t.timestamps
    end
  end
end
