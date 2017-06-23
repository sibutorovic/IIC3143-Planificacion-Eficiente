class AddUserRefToPreviousLearning < ActiveRecord::Migration[5.0]
  def change
    add_reference :previous_learnings, :user, foreign_key: true
  end
end
