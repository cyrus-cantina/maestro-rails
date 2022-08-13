require "test_helper"

class WorkplansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workplan = workplans(:one)
  end

  test "should get index" do
    get workplans_url, as: :json
    assert_response :success
  end

  test "should create workplan" do
    assert_difference("Workplan.count") do
      post workplans_url, params: { workplan: { name: @workplan.name, status: @workplan.status, workplan_category_id: @workplan.workplan_category_id } }, as: :json
    end

    assert_response :created
  end

  test "should show workplan" do
    get workplan_url(@workplan), as: :json
    assert_response :success
  end

  test "should update workplan" do
    patch workplan_url(@workplan), params: { workplan: { name: @workplan.name, status: @workplan.status, workplan_category_id: @workplan.workplan_category_id } }, as: :json
    assert_response :success
  end

  test "should destroy workplan" do
    assert_difference("Workplan.count", -1) do
      delete workplan_url(@workplan), as: :json
    end

    assert_response :no_content
  end
end
