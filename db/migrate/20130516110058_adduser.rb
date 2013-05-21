class Adduser < ActiveRecord::Migration
  def up
    change_table :posts do |t|
      t.integer :user_id
    end
   
end

  def down
    remove_column :posts, :user_id
  end
end
