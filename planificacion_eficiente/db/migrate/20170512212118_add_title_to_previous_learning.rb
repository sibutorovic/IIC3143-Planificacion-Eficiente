class AddTitleToPreviousLearning < ActiveRecord::Migration[5.0]
  def change
    add_column :previous_learnings, :title, :string
  end
end
