# == Schema Information
#
# Table name: abilities
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  unit_plan_id :integer
#

class Ability < ApplicationRecord
  has_and_belongs_to_many :unit_plans
end
