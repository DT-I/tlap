require 'test_helper'

class ResourceCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_category = resource_categories(:one)
  end

  test "should get index" do
    get resource_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_category_url
    assert_response :success
  end

  test "should create resource_category" do
    assert_difference('ResourceCategory.count') do
      post resource_categories_url, params: { resource_category: { name: @resource_category.name, slug: @resource_category.slug } }
    end

    assert_redirected_to resource_category_url(ResourceCategory.last)
  end

  test "should show resource_category" do
    get resource_category_url(@resource_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_category_url(@resource_category)
    assert_response :success
  end

  test "should update resource_category" do
    patch resource_category_url(@resource_category), params: { resource_category: { name: @resource_category.name, slug: @resource_category.slug } }
    assert_redirected_to resource_category_url(@resource_category)
  end

  test "should destroy resource_category" do
    assert_difference('ResourceCategory.count', -1) do
      delete resource_category_url(@resource_category)
    end

    assert_redirected_to resource_categories_url
  end
end
