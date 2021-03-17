class CreateDiners < ActiveRecord::Migration[6.0]
  def change
    create_table :diners do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :location
      t.string :profile_photo

      t.timestamps
    end
  end
end
