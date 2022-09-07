class AddPriceToDonations < ActiveRecord::Migration[7.0]
  def change
    add_monetize :donations, :price, currency: { present: false }
  end
end
