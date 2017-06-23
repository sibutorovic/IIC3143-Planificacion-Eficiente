class AddFeedbackGiverToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_reference :feedbacks, :user, foreign_key: true
  end
end
