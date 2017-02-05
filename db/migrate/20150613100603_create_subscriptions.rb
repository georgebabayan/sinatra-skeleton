class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id,  :null => false
      t.integer :channel_id, :null => false
      t.timestamps
    end

    add_index :subscriptions, [:user_id, :channel_id], :unique => true
    add_index :subscriptions, :channel_id
  end
end
