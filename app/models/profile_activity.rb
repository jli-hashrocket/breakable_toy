class ProfileActivity < ActiveRecord::Base
  validates_presence_of :profile_id
  validates_presence_of :activity_id
end
