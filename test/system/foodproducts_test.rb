require "application_system_test_case"

class FoodproductsTest < ApplicationSystemTestCase
  setup do
    @foodproduct = foodproducts(:one)
  end

  test "visiting the index" do
    visit foodproducts_url
    assert_selector "h1", text: "Foodproducts"
  end

  test "should create foodproduct" do
    visit foodproducts_url
    click_on "New foodproduct"

    fill_in "Category", with: @foodproduct.category
    fill_in "Image", with: @foodproduct.image
    fill_in "Name", with: @foodproduct.name
    fill_in "Price", with: @foodproduct.price
    click_on "Create Foodproduct"

    assert_text "Foodproduct was successfully created"
    click_on "Back"
  end

  test "should update Foodproduct" do
    visit foodproduct_url(@foodproduct)
    click_on "Edit this foodproduct", match: :first

    fill_in "Category", with: @foodproduct.category
    fill_in "Image", with: @foodproduct.image
    fill_in "Name", with: @foodproduct.name
    fill_in "Price", with: @foodproduct.price
    click_on "Update Foodproduct"

    assert_text "Foodproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Foodproduct" do
    visit foodproduct_url(@foodproduct)
    click_on "Destroy this foodproduct", match: :first

    assert_text "Foodproduct was successfully destroyed"
  end
end
