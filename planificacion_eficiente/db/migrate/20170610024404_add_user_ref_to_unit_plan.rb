class AddUserRefToUnitPlan < ActiveRecord::Migration[5.0]
  def change
    add_reference :unit_plans, :user, foreign_key: true
  end
end
