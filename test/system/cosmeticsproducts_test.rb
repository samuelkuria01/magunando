require "application_system_test_case"

class CosmeticsproductsTest < ApplicationSystemTestCase
  setup do
    @cosmeticsproduct = cosmeticsproducts(:one)
  end

  test "visiting the index" do
    visit cosmeticsproducts_url
    assert_selector "h1", text: "Cosmeticsproducts"
  end

  test "should create cosmeticsproduct" do
    visit cosmeticsproducts_url
    click_on "New cosmeticsproduct"

    fill_in "Category", with: @cosmeticsproduct.category
    fill_in "Image", with: @cosmeticsproduct.image
    fill_in "Name", with: @cosmeticsproduct.name
    fill_in "Price", with: @cosmeticsproduct.price
    click_on "Create Cosmeticsproduct"

    assert_text "Cosmeticsproduct was successfully created"
    click_on "Back"
  end

  test "should update Cosmeticsproduct" do
    visit cosmeticsproduct_url(@cosmeticsproduct)
    click_on "Edit this cosmeticsproduct", match: :first

    fill_in "Category", with: @cosmeticsproduct.category
    fill_in "Image", with: @cosmeticsproduct.image
    fill_in "Name", with: @cosmeticsproduct.name
    fill_in "Price", with: @cosmeticsproduct.price
    click_on "Update Cosmeticsproduct"

    assert_text "Cosmeticsproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Cosmeticsproduct" do
    visit cosmeticsproduct_url(@cosmeticsproduct)
    click_on "Destroy this cosmeticsproduct", match: :first

    assert_text "Cosmeticsproduct was successfully destroyed"
  end
end
