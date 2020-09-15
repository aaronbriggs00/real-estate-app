class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.text :description
      t.integer :year_built
      t.decimal :square_feet, precision: 7, scale: 2
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :floors
      t.boolean :availability 
      t.decimal :price, precision: 10, scale: 2
      t.string :address 

      t.timestamps
    end
  end
end
