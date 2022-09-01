class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.references :idea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
