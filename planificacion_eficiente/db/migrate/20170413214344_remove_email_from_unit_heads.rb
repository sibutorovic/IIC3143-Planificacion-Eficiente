class RemoveEmailFromUnitHeads < ActiveRecord::Migration[5.0]
  def change
    remove_column :unit_heads, :email, :string
  end
end
