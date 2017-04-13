# == Schema Information
#
# Table name: abilities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ability < ApplicationRecord
  belongs_to :unit_plan
end
