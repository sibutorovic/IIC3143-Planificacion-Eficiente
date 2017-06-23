# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plan_id    :integer
#

class Feedback < ApplicationRecord
  belongs_to :plan
end
