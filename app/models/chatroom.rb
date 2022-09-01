class Chatroom < ApplicationRecord
  belongs_to :idea
  has_many :messages
end
