# == Schema Information
#
# Table name: previous_learnings
#
#  id                    :integer          not null, primary key
#  content               :text
#  generic_activity      :text
#  achievement_indicator :text
#  estimated_time        :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  unit_plan_id          :integer
#  title                 :string
#

class PreviousLearning < ApplicationRecord
  has_and_belongs_to_many :unit_plans
  belongs_to :user
end
