# == Schema Information
#
# Table name: previous_learnings
#
#  id                    :integer          not null, primary key
#  content               :text
#  generic_activity      :text
#  achievement_indicator :text
#  estimated_time        :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class PreviousLearningTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
