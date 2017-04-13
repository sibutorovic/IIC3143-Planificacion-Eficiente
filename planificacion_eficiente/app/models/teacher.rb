# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  email      :string
#  password   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Teacher < ApplicationRecord
  has_many :plans
  belongs_to :unit_head
end
