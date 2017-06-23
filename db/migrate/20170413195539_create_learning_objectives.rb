class CreateLearningObjectives < ActiveRecord::Migration[5.0]
  def change
    create_table :learning_objectives do |t|
      t.string :name

      t.timestamps
    end
  end
end
