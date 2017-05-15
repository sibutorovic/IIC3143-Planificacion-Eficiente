class CreateAttitudesUnitPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :attitudes_unit_plans do |t|
      t.integer :unit_plan_id
      t.integer :attitude_id
    end
  end
end
