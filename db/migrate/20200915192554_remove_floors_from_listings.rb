class RemoveFloorsFromListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :floors
  end
end
