require "application_system_test_case"

class NewproductsTest < ApplicationSystemTestCase
  setup do
    @newproduct = newproducts(:one)
  end

  test "visiting the index" do
    visit newproducts_url
    assert_selector "h1", text: "Newproducts"
  end

  test "should create newproduct" do
    visit newproducts_url
    click_on "New newproduct"

    fill_in "Image", with: @newproduct.image
    fill_in "Name", with: @newproduct.name
    fill_in "Price", with: @newproduct.price
    click_on "Create Newproduct"

    assert_text "Newproduct was successfully created"
    click_on "Back"
  end

  test "should update Newproduct" do
    visit newproduct_url(@newproduct)
    click_on "Edit this newproduct", match: :first

    fill_in "Image", with: @newproduct.image
    fill_in "Name", with: @newproduct.name
    fill_in "Price", with: @newproduct.price
    click_on "Update Newproduct"

    assert_text "Newproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Newproduct" do
    visit newproduct_url(@newproduct)
    click_on "Destroy this newproduct", match: :first

    assert_text "Newproduct was successfully destroyed"
  end
end
