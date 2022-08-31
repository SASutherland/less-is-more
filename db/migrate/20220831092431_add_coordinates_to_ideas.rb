class AddCoordinatesToIdeas < ActiveRecord::Migration[7.0]
  def change
    add_column :ideas, :latitude, :float
    add_column :ideas, :longitude, :float
  end
end
