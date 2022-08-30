class CreateIdeas < ActiveRecord::Migration[7.0]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :content
      t.string :location
      t.string :photo
      t.integer :votes
      t.string :category
      t.string :subcategory
      t.string :impact
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
