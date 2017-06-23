require 'test_helper'

class LearningObjectivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learning_objective = learning_objectives(:one)
  end

  test "should get index" do
    get learning_objectives_url
    assert_response :success
  end

  test "should get new" do
    get new_learning_objective_url
    assert_response :success
  end

  test "should create learning_objective" do
    assert_difference('LearningObjective.count') do
      post learning_objectives_url, params: { learning_objective: { name: @learning_objective.name } }
    end

    assert_redirected_to learning_objective_url(LearningObjective.last)
  end

  test "should show learning_objective" do
    get learning_objective_url(@learning_objective)
    assert_response :success
  end

  test "should get edit" do
    get edit_learning_objective_url(@learning_objective)
    assert_response :success
  end

  test "should update learning_objective" do
    patch learning_objective_url(@learning_objective), params: { learning_objective: { name: @learning_objective.name } }
    assert_redirected_to learning_objective_url(@learning_objective)
  end

  test "should destroy learning_objective" do
    assert_difference('LearningObjective.count', -1) do
      delete learning_objective_url(@learning_objective)
    end

    assert_redirected_to learning_objectives_url
  end
end
