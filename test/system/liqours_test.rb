require "application_system_test_case"

class LiqoursTest < ApplicationSystemTestCase
  setup do
    @liqour = liqours(:one)
  end

  test "visiting the index" do
    visit liqours_url
    assert_selector "h1", text: "Liqours"
  end

  test "should create liqour" do
    visit liqours_url
    click_on "New liqour"

    fill_in "Category", with: @liqour.category
    fill_in "Description", with: @liqour.description
    fill_in "Image", with: @liqour.image
    fill_in "Name", with: @liqour.name
    fill_in "Price", with: @liqour.price
    click_on "Create Liqour"

    assert_text "Liqour was successfully created"
    click_on "Back"
  end

  test "should update Liqour" do
    visit liqour_url(@liqour)
    click_on "Edit this liqour", match: :first

    fill_in "Category", with: @liqour.category
    fill_in "Description", with: @liqour.description
    fill_in "Image", with: @liqour.image
    fill_in "Name", with: @liqour.name
    fill_in "Price", with: @liqour.price
    click_on "Update Liqour"

    assert_text "Liqour was successfully updated"
    click_on "Back"
  end

  test "should destroy Liqour" do
    visit liqour_url(@liqour)
    click_on "Destroy this liqour", match: :first

    assert_text "Liqour was successfully destroyed"
  end
end
