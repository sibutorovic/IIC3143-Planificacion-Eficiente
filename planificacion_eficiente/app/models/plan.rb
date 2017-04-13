# == Schema Information
#
# Table name: plans
#
#  id          :integer          not null, primary key
#  grade       :string
#  subject     :string
#  year        :integer
#  total_hours :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Plan < ApplicationRecord
  belongs_to :teacher
  has_many :feedbacks
  has_many :unit_plans
end
