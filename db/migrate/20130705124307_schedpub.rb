class Schedpub < ActiveRecord::Migration
  def up
    change_table :posts do |t|
      t.datetime :publish_time
      t.integer :published, :default => "0"
    end
  end

  def down
      remove_column :posts, :publish_time
      remove_column :posts, :published
  end
end
