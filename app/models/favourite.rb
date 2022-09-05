class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :idea

  validates :user_id, uniqueness: { scope: :idea_id,
    message: "Idea already in your favourites list!" }
end
