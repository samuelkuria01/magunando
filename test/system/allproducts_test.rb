require "application_system_test_case"

class AllproductsTest < ApplicationSystemTestCase
  setup do
    @allproduct = allproducts(:one)
  end

  test "visiting the index" do
    visit allproducts_url
    assert_selector "h1", text: "Allproducts"
  end

  test "should create allproduct" do
    visit allproducts_url
    click_on "New allproduct"

    fill_in "Image", with: @allproduct.image
    fill_in "Name", with: @allproduct.name
    fill_in "Price", with: @allproduct.price
    click_on "Create Allproduct"

    assert_text "Allproduct was successfully created"
    click_on "Back"
  end

  test "should update Allproduct" do
    visit allproduct_url(@allproduct)
    click_on "Edit this allproduct", match: :first

    fill_in "Image", with: @allproduct.image
    fill_in "Name", with: @allproduct.name
    fill_in "Price", with: @allproduct.price
    click_on "Update Allproduct"

    assert_text "Allproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Allproduct" do
    visit allproduct_url(@allproduct)
    click_on "Destroy this allproduct", match: :first

    assert_text "Allproduct was successfully destroyed"
  end
end
