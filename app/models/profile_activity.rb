class ProfileActivity < ActiveRecord::Base
  validates_presence_of :profile
  validates_presence_of :activity

  belongs_to :profile,
    inverse_of: :profile_activities
  belongs_to :activity,
    inverse_of: :profile_activities

end
