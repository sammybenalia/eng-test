class Post < ActiveRecord::Base
  attr_accessible :tags, :title, :content, :featured_image, :tag_list, :description, :caption, :publish_time, :published
  has_attached_file :featured_image, :styles => {:medium => "300x300>", :twitter => "280x150>"}
  acts_as_taggable
  belongs_to :user 
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def self.recent
    self.find(:all, :limit => 10, :order => 'created_at DESC')
  end
  def self.to_publish
    time = DateTime.current
    #need to find posts that have past publish date but have published set to no 
    self.where("published = 0 AND publish_time < ?", time)
  end
  def self.publish(entry)
    entry.published = 1
    entry.save
  end
  def self.published
    self.where("published=1", 1 )
  end
end
