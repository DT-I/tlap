require "application_system_test_case"

class ResourceCategoriesTest < ApplicationSystemTestCase
  setup do
    @resource_category = resource_categories(:one)
  end

  test "visiting the index" do
    visit resource_categories_url
    assert_selector "h1", text: "Resource Categories"
  end

  test "creating a Resource category" do
    visit resource_categories_url
    click_on "New Resource Category"

    fill_in "Name", with: @resource_category.name
    fill_in "Slug", with: @resource_category.slug
    click_on "Create Resource category"

    assert_text "Resource category was successfully created"
    click_on "Back"
  end

  test "updating a Resource category" do
    visit resource_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @resource_category.name
    fill_in "Slug", with: @resource_category.slug
    click_on "Update Resource category"

    assert_text "Resource category was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource category" do
    visit resource_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource category was successfully destroyed"
  end
end
