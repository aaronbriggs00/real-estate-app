class RemoveAddressFromListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :address
  end
end
