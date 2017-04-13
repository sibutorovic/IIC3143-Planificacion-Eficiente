class RemovePasswordFromUnitHeads < ActiveRecord::Migration[5.0]
  def change
    remove_column :unit_heads, :password, :string
  end
end
