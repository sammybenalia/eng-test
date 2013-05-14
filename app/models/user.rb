class User < ActiveRecord::Base
   attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :username, :role
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :email
  validates_presence_of :password, :on => :create
  
   ROLES = %w[admin moderator author banned]
end
