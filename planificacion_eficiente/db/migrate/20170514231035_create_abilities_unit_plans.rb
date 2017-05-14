class CreateAbilitiesUnitPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities_unit_plans do |t|
      t.integer :unit_plan_id
      t.integer :ability_id
    end
  end
end
