class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :food_category
      t.integer :neighborhood_id

      t.timestamps null: false
    end
  end
end
