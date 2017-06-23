class CreatePreviousLearnings < ActiveRecord::Migration[5.0]
  def change
    create_table :previous_learnings do |t|
      t.text :content
      t.text :generic_activity
      t.text :achievement_indicator
      t.integer :estimated_time

      t.timestamps
    end
  end
end
