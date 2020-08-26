class AddInfosToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :steam_username, :string
    add_column :users, :psn_username, :string
    add_column :users, :xboxlive_username, :string
  end
end
