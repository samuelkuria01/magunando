require "application_system_test_case"

class VegesproductsTest < ApplicationSystemTestCase
  setup do
    @vegesproduct = vegesproducts(:one)
  end

  test "visiting the index" do
    visit vegesproducts_url
    assert_selector "h1", text: "Vegesproducts"
  end

  test "should create vegesproduct" do
    visit vegesproducts_url
    click_on "New vegesproduct"

    fill_in "Category", with: @vegesproduct.category
    fill_in "Image", with: @vegesproduct.image
    fill_in "Name", with: @vegesproduct.name
    fill_in "Price", with: @vegesproduct.price
    click_on "Create Vegesproduct"

    assert_text "Vegesproduct was successfully created"
    click_on "Back"
  end

  test "should update Vegesproduct" do
    visit vegesproduct_url(@vegesproduct)
    click_on "Edit this vegesproduct", match: :first

    fill_in "Category", with: @vegesproduct.category
    fill_in "Image", with: @vegesproduct.image
    fill_in "Name", with: @vegesproduct.name
    fill_in "Price", with: @vegesproduct.price
    click_on "Update Vegesproduct"

    assert_text "Vegesproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Vegesproduct" do
    visit vegesproduct_url(@vegesproduct)
    click_on "Destroy this vegesproduct", match: :first

    assert_text "Vegesproduct was successfully destroyed"
  end
end
