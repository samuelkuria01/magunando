require "application_system_test_case"

class BevaragesproductsTest < ApplicationSystemTestCase
  setup do
    @bevaragesproduct = bevaragesproducts(:one)
  end

  test "visiting the index" do
    visit bevaragesproducts_url
    assert_selector "h1", text: "Bevaragesproducts"
  end

  test "should create bevaragesproduct" do
    visit bevaragesproducts_url
    click_on "New bevaragesproduct"

    fill_in "Category", with: @bevaragesproduct.category
    fill_in "Image", with: @bevaragesproduct.image
    fill_in "Name", with: @bevaragesproduct.name
    fill_in "Price", with: @bevaragesproduct.price
    click_on "Create Bevaragesproduct"

    assert_text "Bevaragesproduct was successfully created"
    click_on "Back"
  end

  test "should update Bevaragesproduct" do
    visit bevaragesproduct_url(@bevaragesproduct)
    click_on "Edit this bevaragesproduct", match: :first

    fill_in "Category", with: @bevaragesproduct.category
    fill_in "Image", with: @bevaragesproduct.image
    fill_in "Name", with: @bevaragesproduct.name
    fill_in "Price", with: @bevaragesproduct.price
    click_on "Update Bevaragesproduct"

    assert_text "Bevaragesproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Bevaragesproduct" do
    visit bevaragesproduct_url(@bevaragesproduct)
    click_on "Destroy this bevaragesproduct", match: :first

    assert_text "Bevaragesproduct was successfully destroyed"
  end
end
