class AddTableUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
    t.string :first_name, null: false
    end
  end
end
