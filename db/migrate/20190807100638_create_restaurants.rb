class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.text :address
      t.integer :phone_number
      t.text :hours
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
