class CreateUnitPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :unit_plans do |t|
      t.string :title
      t.integer :total_hours_unit
      t.text :objective

      t.timestamps
    end
  end
end
