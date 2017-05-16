class CreatePlanRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :plan_relations do |t|
      t.integer :semester
      t.integer :order
      t.integer :plan_id
      t.integer :unit_plan_id

      t.timestamps
    end
  end
end
