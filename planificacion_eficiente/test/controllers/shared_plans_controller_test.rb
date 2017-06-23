require 'test_helper'

class SharedPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared_plan = shared_plans(:one)
  end

  test "should get index" do
    get shared_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_shared_plan_url
    assert_response :success
  end

  test "should create shared_plan" do
    assert_difference('SharedPlan.count') do
      post shared_plans_url, params: { shared_plan: { plan_id: @shared_plan.plan_id, user_id: @shared_plan.user_id } }
    end

    assert_redirected_to shared_plan_url(SharedPlan.last)
  end

  test "should show shared_plan" do
    get shared_plan_url(@shared_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_shared_plan_url(@shared_plan)
    assert_response :success
  end

  test "should update shared_plan" do
    patch shared_plan_url(@shared_plan), params: { shared_plan: { plan_id: @shared_plan.plan_id, user_id: @shared_plan.user_id } }
    assert_redirected_to shared_plan_url(@shared_plan)
  end

  test "should destroy shared_plan" do
    assert_difference('SharedPlan.count', -1) do
      delete shared_plan_url(@shared_plan)
    end

    assert_redirected_to shared_plans_url
  end
end
