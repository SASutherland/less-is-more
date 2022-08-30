class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :country, :string
    add_column :users, :transport, :string
    add_column :users, :food, :string
    add_column :users, :housing, :string
    add_column :users, :leisure, :string
  end
end
