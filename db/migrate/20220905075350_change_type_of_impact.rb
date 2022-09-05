class ChangeTypeOfImpact < ActiveRecord::Migration[7.0]
  def change
    change_column(:ideas, :impact, :integer)
  end
end
