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
  belongs_to :user
  has_many :feedbacks
  has_and_belongs_to_many :unit_plans
  has_attached_file :pdf
  validates_attachment :pdf, content_type: { content_type: "application/pdf" }
end
