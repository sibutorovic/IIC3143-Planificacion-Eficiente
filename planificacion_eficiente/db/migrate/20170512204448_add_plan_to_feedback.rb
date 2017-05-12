class AddPlanToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_reference :feedbacks, :plan, foreign_key: true
  end
end
