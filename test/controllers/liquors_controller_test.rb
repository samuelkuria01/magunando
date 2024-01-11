require "test_helper"

class LiquorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liquor = liquors(:one)
  end

  test "should get index" do
    get liquors_url
    assert_response :success
  end

  test "should get new" do
    get new_liquor_url
    assert_response :success
  end

  test "should create liquor" do
    assert_difference("Liquor.count") do
      post liquors_url, params: { liquor: { description: @liquor.description, image_url: @liquor.image_url, name: @liquor.name, price: @liquor.price } }
    end

    assert_redirected_to liquor_url(Liquor.last)
  end

  test "should show liquor" do
    get liquor_url(@liquor)
    assert_response :success
  end

  test "should get edit" do
    get edit_liquor_url(@liquor)
    assert_response :success
  end

  test "should update liquor" do
    patch liquor_url(@liquor), params: { liquor: { description: @liquor.description, image_url: @liquor.image_url, name: @liquor.name, price: @liquor.price } }
    assert_redirected_to liquor_url(@liquor)
  end

  test "should destroy liquor" do
    assert_difference("Liquor.count", -1) do
      delete liquor_url(@liquor)
    end

    assert_redirected_to liquors_url
  end
end
