class Donation < ApplicationRecord
  register_currency :eur
  monetize :price_cents
  has_many :orders, dependent: :destroy
end
