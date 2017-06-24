class RemoveUnitPlanFromPreviousLearning < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :previous_learnings, :unit_plan, foreign_key: true
  end
end
