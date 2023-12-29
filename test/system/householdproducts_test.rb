require "application_system_test_case"

class HouseholdproductsTest < ApplicationSystemTestCase
  setup do
    @householdproduct = householdproducts(:one)
  end

  test "visiting the index" do
    visit householdproducts_url
    assert_selector "h1", text: "Householdproducts"
  end

  test "should create householdproduct" do
    visit householdproducts_url
    click_on "New householdproduct"

    fill_in "Category", with: @householdproduct.category
    fill_in "Image", with: @householdproduct.image
    fill_in "Name", with: @householdproduct.name
    fill_in "Price", with: @householdproduct.price
    click_on "Create Householdproduct"

    assert_text "Householdproduct was successfully created"
    click_on "Back"
  end

  test "should update Householdproduct" do
    visit householdproduct_url(@householdproduct)
    click_on "Edit this householdproduct", match: :first

    fill_in "Category", with: @householdproduct.category
    fill_in "Image", with: @householdproduct.image
    fill_in "Name", with: @householdproduct.name
    fill_in "Price", with: @householdproduct.price
    click_on "Update Householdproduct"

    assert_text "Householdproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Householdproduct" do
    visit householdproduct_url(@householdproduct)
    click_on "Destroy this householdproduct", match: :first

    assert_text "Householdproduct was successfully destroyed"
  end
end
