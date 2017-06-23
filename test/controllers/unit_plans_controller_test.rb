require 'test_helper'

class UnitPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_plan = unit_plans(:one)
  end

  test "should get index" do
    get unit_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_plan_url
    assert_response :success
  end

  test "should create unit_plan" do
    assert_difference('UnitPlan.count') do
      post unit_plans_url, params: { unit_plan: { objective: @unit_plan.objective, title: @unit_plan.title, total_hours_unit: @unit_plan.total_hours_unit } }
    end

    assert_redirected_to unit_plan_url(UnitPlan.last)
  end

  test "should show unit_plan" do
    get unit_plan_url(@unit_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_plan_url(@unit_plan)
    assert_response :success
  end

  test "should update unit_plan" do
    patch unit_plan_url(@unit_plan), params: { unit_plan: { objective: @unit_plan.objective, title: @unit_plan.title, total_hours_unit: @unit_plan.total_hours_unit } }
    assert_redirected_to unit_plan_url(@unit_plan)
  end

  test "should destroy unit_plan" do
    assert_difference('UnitPlan.count', -1) do
      delete unit_plan_url(@unit_plan)
    end

    assert_redirected_to unit_plans_url
  end
end
