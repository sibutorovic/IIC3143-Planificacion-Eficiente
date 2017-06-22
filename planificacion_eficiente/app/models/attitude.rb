# == Schema Information
#
# Table name: attitudes
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  unit_plan_id :integer
#

class Attitude < ApplicationRecord
  has_and_belongs_to_many :unit_plans
  belongs_to :user
end
