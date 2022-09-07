class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :donation_name
      t.string :checkout_session_id
      t.references :user, null: false, foreign_key: true
      t.references :donation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
