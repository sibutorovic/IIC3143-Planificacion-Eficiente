class AddUnitPlanToPreviousLearning < ActiveRecord::Migration[5.0]
  def change
    add_reference :previous_learnings, :unit_plan, foreign_key: true
  end
end
