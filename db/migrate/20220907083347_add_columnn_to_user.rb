class AddColumnnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :survey_result, :float
  end
end
