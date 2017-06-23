class AddFeedbackGiverToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_reference :feedbacks, :feedback_giver, foreign_key: true
  end
end
