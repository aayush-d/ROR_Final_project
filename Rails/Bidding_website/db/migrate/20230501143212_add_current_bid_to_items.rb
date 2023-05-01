class AddCurrentBidToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :current_bid, :integer, default: 0  end
end
