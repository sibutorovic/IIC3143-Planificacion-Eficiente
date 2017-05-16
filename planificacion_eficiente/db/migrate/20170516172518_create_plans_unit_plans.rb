class CreatePlansUnitPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans_unit_plans do |t|
      t.integer :unit_plan_id
      t.integer :plan_id
    end
  end
end
