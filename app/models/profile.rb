class Profile < ActiveRecord::Base
  validates_presence_of :last_name
  validates_presence_of :first_name
  validates_presence_of :username
  validates :password,  :confirmation => true, :presence => true
  validates :email,     :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }, :presence => true

end
