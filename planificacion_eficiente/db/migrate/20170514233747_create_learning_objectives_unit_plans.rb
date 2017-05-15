class CreateLearningObjectivesUnitPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :learning_objectives_unit_plans do |t|
      t.integer :unit_plan_id
      t.integer :learning_objective_id
    end
  end
end
