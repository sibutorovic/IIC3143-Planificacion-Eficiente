class AddPlanToUnitPlan < ActiveRecord::Migration[5.0]
  def change
    add_reference :unit_plans, :plan, foreign_key: true
  end
end
