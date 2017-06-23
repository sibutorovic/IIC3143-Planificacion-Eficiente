class AddUserRefToLearningObjective < ActiveRecord::Migration[5.0]
  def change
    add_reference :learning_objectives, :user, foreign_key: true
  end
end
