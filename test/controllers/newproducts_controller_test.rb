require "test_helper"

class NewproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newproduct = newproducts(:one)
  end

  test "should get index" do
    get newproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_newproduct_url
    assert_response :success
  end

  test "should create newproduct" do
    assert_difference("Newproduct.count") do
      post newproducts_url, params: { newproduct: { image: @newproduct.image, name: @newproduct.name, price: @newproduct.price } }
    end

    assert_redirected_to newproduct_url(Newproduct.last)
  end

  test "should show newproduct" do
    get newproduct_url(@newproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_newproduct_url(@newproduct)
    assert_response :success
  end

  test "should update newproduct" do
    patch newproduct_url(@newproduct), params: { newproduct: { image: @newproduct.image, name: @newproduct.name, price: @newproduct.price } }
    assert_redirected_to newproduct_url(@newproduct)
  end

  test "should destroy newproduct" do
    assert_difference("Newproduct.count", -1) do
      delete newproduct_url(@newproduct)
    end

    assert_redirected_to newproducts_url
  end
end
