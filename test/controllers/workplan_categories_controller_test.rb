require "test_helper"

class WorkplanCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workplan_category = workplan_categories(:one)
  end

  test "should get index" do
    get workplan_categories_url, as: :json
    assert_response :success
  end

  test "should create workplan_category" do
    assert_difference("WorkplanCategory.count") do
      post workplan_categories_url, params: { workplan_category: { name: @workplan_category.name } }, as: :json
    end

    assert_response :created
  end

  test "should show workplan_category" do
    get workplan_category_url(@workplan_category), as: :json
    assert_response :success
  end

  test "should update workplan_category" do
    patch workplan_category_url(@workplan_category), params: { workplan_category: { name: @workplan_category.name } }, as: :json
    assert_response :success
  end

  test "should destroy workplan_category" do
    assert_difference("WorkplanCategory.count", -1) do
      delete workplan_category_url(@workplan_category), as: :json
    end

    assert_response :no_content
  end
end
