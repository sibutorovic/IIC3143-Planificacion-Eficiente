class DropUnitHeads < ActiveRecord::Migration[5.0]
  def change
    drop_table :unit_heads
  end
end
