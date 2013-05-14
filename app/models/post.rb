class Post < ActiveRecord::Base
  attr_accessible :tags, :title, :content, :featured_image
  has_attached_file :featured_image, :styles => {:medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"


  def self.recent
    self.find(:all, :limit => 10, :order => 'created_at desc')
  end
end
