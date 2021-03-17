class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :chef, null: false, foreign_key: true
      t.belongs_to :diner, null: false, foreign_key: true
      t.integer :party_size
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
