class AddAmountToOrders < ActiveRecord::Migration[7.0]
  def change
    add_monetize :orders, :amount
  end
end
