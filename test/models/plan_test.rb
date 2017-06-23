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

require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
