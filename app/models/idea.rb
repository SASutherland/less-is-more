class Idea < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :chatrooms

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
