class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.boolean :on_steam, default: false
      t.boolean :on_psn, default: false
      t.boolean :on_xboxlive, default: false

      t.timestamps
    end
  end
end
