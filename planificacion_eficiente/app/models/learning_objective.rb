# == Schema Information
#
# Table name: learning_objectives
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LearningObjective < ApplicationRecord
  belongs_to :unit_plan
end
