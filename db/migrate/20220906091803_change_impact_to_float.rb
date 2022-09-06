class ChangeImpactToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column(:ideas, :impact, :float)
  end
end
