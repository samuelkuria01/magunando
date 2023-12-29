require "test_helper"

class FoodproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foodproduct = foodproducts(:one)
  end

  test "should get index" do
    get foodproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_foodproduct_url
    assert_response :success
  end

  test "should create foodproduct" do
    assert_difference("Foodproduct.count") do
      post foodproducts_url, params: { foodproduct: { category: @foodproduct.category, image: @foodproduct.image, name: @foodproduct.name, price: @foodproduct.price } }
    end

    assert_redirected_to foodproduct_url(Foodproduct.last)
  end

  test "should show foodproduct" do
    get foodproduct_url(@foodproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_foodproduct_url(@foodproduct)
    assert_response :success
  end

  test "should update foodproduct" do
    patch foodproduct_url(@foodproduct), params: { foodproduct: { category: @foodproduct.category, image: @foodproduct.image, name: @foodproduct.name, price: @foodproduct.price } }
    assert_redirected_to foodproduct_url(@foodproduct)
  end

  test "should destroy foodproduct" do
    assert_difference("Foodproduct.count", -1) do
      delete foodproduct_url(@foodproduct)
    end

    assert_redirected_to foodproducts_url
  end
end
