require "application_system_test_case"

class BabyproductsTest < ApplicationSystemTestCase
  setup do
    @babyproduct = babyproducts(:one)
  end

  test "visiting the index" do
    visit babyproducts_url
    assert_selector "h1", text: "Babyproducts"
  end

  test "should create babyproduct" do
    visit babyproducts_url
    click_on "New babyproduct"

    fill_in "Category", with: @babyproduct.category
    fill_in "Image", with: @babyproduct.image
    fill_in "Name", with: @babyproduct.name
    fill_in "Price", with: @babyproduct.price
    click_on "Create Babyproduct"

    assert_text "Babyproduct was successfully created"
    click_on "Back"
  end

  test "should update Babyproduct" do
    visit babyproduct_url(@babyproduct)
    click_on "Edit this babyproduct", match: :first

    fill_in "Category", with: @babyproduct.category
    fill_in "Image", with: @babyproduct.image
    fill_in "Name", with: @babyproduct.name
    fill_in "Price", with: @babyproduct.price
    click_on "Update Babyproduct"

    assert_text "Babyproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Babyproduct" do
    visit babyproduct_url(@babyproduct)
    click_on "Destroy this babyproduct", match: :first

    assert_text "Babyproduct was successfully destroyed"
  end
end
