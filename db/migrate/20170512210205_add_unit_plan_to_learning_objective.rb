class AddUnitPlanToLearningObjective < ActiveRecord::Migration[5.0]
  def change
    add_reference :learning_objectives, :unit_plan, foreign_key: true
  end
end
