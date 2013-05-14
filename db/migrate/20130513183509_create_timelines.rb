class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.attachment :image
      

      t.timestamps
    end
  end
end
