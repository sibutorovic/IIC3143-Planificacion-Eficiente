class AddUnitPlanToAbility < ActiveRecord::Migration[5.0]
  def change
    add_reference :abilities, :unit_plan, foreign_key: true
  end
end
