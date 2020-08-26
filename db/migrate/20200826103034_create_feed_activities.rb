class CreateFeedActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :feed_activities do |t|
      t.references :content, null: false, polymorphic: true
      t.references :receiver, null: false, foreign_key: { to_table: :users }
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
