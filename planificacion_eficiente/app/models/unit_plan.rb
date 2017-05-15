# == Schema Information
#
# Table name: unit_plans
#
#  id               :integer          not null, primary key
#  title            :string
#  total_hours_unit :integer
#  objective        :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  plan_id          :integer
#

class UnitPlan < ApplicationRecord
  has_and_belongs_to_many :abilities
  has_and_belongs_to_many :learning_objectives
  has_and_belongs_to_many :attitudes
  has_many :previous_learnings
  belongs_to :plan
end
