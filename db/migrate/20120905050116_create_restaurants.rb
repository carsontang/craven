class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
