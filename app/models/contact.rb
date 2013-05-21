class Contact < ActiveRecord::Base
 attr_accessible :name, :email, :message
 validates :name, :email, :message, :presence => {:message => 'cannot be blank'}

 
 
 
end
