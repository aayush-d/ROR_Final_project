class AddSellerIdBidderIdToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :seller_id, :integer, null: false
    add_column :items, :bidder_id, :integer

  end
end
