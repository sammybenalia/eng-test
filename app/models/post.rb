class Post < ActiveRecord::Base
  attr_accessible :tags, :title, :content, :featured_image, :tag_list, :description
  has_attached_file :featured_image, :styles => {:medium => "300x300>", :twitter => "280x150>"}, :default_url => "/images/:style/missing.png"
  acts_as_taggable
  belongs_to :user 
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def self.recent
    self.find(:all, :limit => 10, :order => 'created_at DESC')
  end
end
