class Donation < ApplicationRecord
  register_currency :eur
  monetize :price_cents
end
