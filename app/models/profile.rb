class Profile < ActiveRecord::Base
  validates_presence_of :last_name
  validates_presence_of :first_name
  validates_presence_of :username
  validates :password,  :confirmation => true, :presence => true
  validates :email,     :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }, :presence => true

  has_many :profile_activities,
    inverse_of: :profile
  has_many :activities,
    through: :profile_activities
end
