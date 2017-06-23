class AddUnitPlanToAttitude < ActiveRecord::Migration[5.0]
  def change
    add_reference :attitudes, :unit_plan, foreign_key: true
  end
end
