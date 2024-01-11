require "test_helper"

class LiqoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liqour = liqours(:one)
  end

  test "should get index" do
    get liqours_url
    assert_response :success
  end

  test "should get new" do
    get new_liqour_url
    assert_response :success
  end

  test "should create liqour" do
    assert_difference("Liqour.count") do
      post liqours_url, params: { liqour: { category: @liqour.category, description: @liqour.description, image: @liqour.image, name: @liqour.name, price: @liqour.price } }
    end

    assert_redirected_to liqour_url(Liqour.last)
  end

  test "should show liqour" do
    get liqour_url(@liqour)
    assert_response :success
  end

  test "should get edit" do
    get edit_liqour_url(@liqour)
    assert_response :success
  end

  test "should update liqour" do
    patch liqour_url(@liqour), params: { liqour: { category: @liqour.category, description: @liqour.description, image: @liqour.image, name: @liqour.name, price: @liqour.price } }
    assert_redirected_to liqour_url(@liqour)
  end

  test "should destroy liqour" do
    assert_difference("Liqour.count", -1) do
      delete liqour_url(@liqour)
    end

    assert_redirected_to liqours_url
  end
end
