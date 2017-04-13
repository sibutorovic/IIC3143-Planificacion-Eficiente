# == Schema Information
#
# Table name: attitudes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Attitude < ApplicationRecord
  belongs_to :unit_plan
end
