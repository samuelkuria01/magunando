require "application_system_test_case"

class LiquorsTest < ApplicationSystemTestCase
  setup do
    @liquor = liquors(:one)
  end

  test "visiting the index" do
    visit liquors_url
    assert_selector "h1", text: "Liquors"
  end

  test "should create liquor" do
    visit liquors_url
    click_on "New liquor"

    fill_in "Description", with: @liquor.description
    fill_in "Image url", with: @liquor.image_url
    fill_in "Name", with: @liquor.name
    fill_in "Price", with: @liquor.price
    click_on "Create Liquor"

    assert_text "Liquor was successfully created"
    click_on "Back"
  end

  test "should update Liquor" do
    visit liquor_url(@liquor)
    click_on "Edit this liquor", match: :first

    fill_in "Description", with: @liquor.description
    fill_in "Image url", with: @liquor.image_url
    fill_in "Name", with: @liquor.name
    fill_in "Price", with: @liquor.price
    click_on "Update Liquor"

    assert_text "Liquor was successfully updated"
    click_on "Back"
  end

  test "should destroy Liquor" do
    visit liquor_url(@liquor)
    click_on "Destroy this liquor", match: :first

    assert_text "Liquor was successfully destroyed"
  end
end
