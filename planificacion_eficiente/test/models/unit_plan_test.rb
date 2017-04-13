# == Schema Information
#
# Table name: unit_plans
#
#  id               :integer          not null, primary key
#  title            :string
#  total_hours_unit :integer
#  objective        :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class UnitPlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
