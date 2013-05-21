class User < ActiveRecord::Base
   attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :username, :role
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :email
  validates_presence_of :password, :on => :create
  acts_as_tagger
  has_many :posts
  extend FriendlyId
  friendly_id :username, use: :slugged
  
   ROLES = %w[admin moderator author banned]
   
   def fullname
     name = "#{first_name.capitalize} #{last_name.capitalize}"
   end
end
