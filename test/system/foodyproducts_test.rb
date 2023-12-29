require "application_system_test_case"

class FoodyproductsTest < ApplicationSystemTestCase
  setup do
    @foodyproduct = foodyproducts(:one)
  end

  test "visiting the index" do
    visit foodyproducts_url
    assert_selector "h1", text: "Foodyproducts"
  end

  test "should create foodyproduct" do
    visit foodyproducts_url
    click_on "New foodyproduct"

    fill_in "Category", with: @foodyproduct.category
    fill_in "Image", with: @foodyproduct.image
    fill_in "Name", with: @foodyproduct.name
    fill_in "Price", with: @foodyproduct.price
    click_on "Create Foodyproduct"

    assert_text "Foodyproduct was successfully created"
    click_on "Back"
  end

  test "should update Foodyproduct" do
    visit foodyproduct_url(@foodyproduct)
    click_on "Edit this foodyproduct", match: :first

    fill_in "Category", with: @foodyproduct.category
    fill_in "Image", with: @foodyproduct.image
    fill_in "Name", with: @foodyproduct.name
    fill_in "Price", with: @foodyproduct.price
    click_on "Update Foodyproduct"

    assert_text "Foodyproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Foodyproduct" do
    visit foodyproduct_url(@foodyproduct)
    click_on "Destroy this foodyproduct", match: :first

    assert_text "Foodyproduct was successfully destroyed"
  end
end
