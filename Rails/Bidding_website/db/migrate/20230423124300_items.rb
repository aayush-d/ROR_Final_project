class Items < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      ## Database authenticatable
      t.string :title, null: false
      t.text :description, null: false

      t.string :category, default: "Others"
      
      t.string :status, default: "draft"
      t.integer :min_bid, null: false, default: 0

      t.integer :sold_at, default: 0
    end
  end
end
