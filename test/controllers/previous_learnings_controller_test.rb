require 'test_helper'

class PreviousLearningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @previous_learning = previous_learnings(:one)
  end

  test "should get index" do
    get previous_learnings_url
    assert_response :success
  end

  test "should get new" do
    get new_previous_learning_url
    assert_response :success
  end

  test "should create previous_learning" do
    assert_difference('PreviousLearning.count') do
      post previous_learnings_url, params: { previous_learning: { achievement_indicator: @previous_learning.achievement_indicator, content: @previous_learning.content, estimated_time: @previous_learning.estimated_time, generic_activity: @previous_learning.generic_activity } }
    end

    assert_redirected_to previous_learning_url(PreviousLearning.last)
  end

  test "should show previous_learning" do
    get previous_learning_url(@previous_learning)
    assert_response :success
  end

  test "should get edit" do
    get edit_previous_learning_url(@previous_learning)
    assert_response :success
  end

  test "should update previous_learning" do
    patch previous_learning_url(@previous_learning), params: { previous_learning: { achievement_indicator: @previous_learning.achievement_indicator, content: @previous_learning.content, estimated_time: @previous_learning.estimated_time, generic_activity: @previous_learning.generic_activity } }
    assert_redirected_to previous_learning_url(@previous_learning)
  end

  test "should destroy previous_learning" do
    assert_difference('PreviousLearning.count', -1) do
      delete previous_learning_url(@previous_learning)
    end

    assert_redirected_to previous_learnings_url
  end
end
