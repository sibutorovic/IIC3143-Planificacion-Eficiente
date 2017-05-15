# == Schema Information
#
# Table name: learning_objectives
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  unit_plan_id :integer
#

class LearningObjective < ApplicationRecord
  belongs_to :unit_plan
end
