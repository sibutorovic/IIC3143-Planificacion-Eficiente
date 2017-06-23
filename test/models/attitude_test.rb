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

require 'test_helper'

class AttitudeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
