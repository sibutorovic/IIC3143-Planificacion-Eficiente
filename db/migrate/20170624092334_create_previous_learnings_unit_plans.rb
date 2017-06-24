class CreatePreviousLearningsUnitPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :previous_learnings_unit_plans do |t|
      t.integer :unit_plan_id
      t.integer :previous_learning_id
    end
  end
end
