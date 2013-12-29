class Activity < ActiveRecord::Base
  validates_presence_of :name

  has_many :profile_activities,
    inverse_of: :activity
  has_many :profiles,
    through: :profile_activities
end
