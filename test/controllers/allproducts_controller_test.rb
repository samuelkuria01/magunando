require "test_helper"

class AllproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allproduct = allproducts(:one)
  end

  test "should get index" do
    get allproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_allproduct_url
    assert_response :success
  end

  test "should create allproduct" do
    assert_difference("Allproduct.count") do
      post allproducts_url, params: { allproduct: { image: @allproduct.image, name: @allproduct.name, price: @allproduct.price } }
    end

    assert_redirected_to allproduct_url(Allproduct.last)
  end

  test "should show allproduct" do
    get allproduct_url(@allproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_allproduct_url(@allproduct)
    assert_response :success
  end

  test "should update allproduct" do
    patch allproduct_url(@allproduct), params: { allproduct: { image: @allproduct.image, name: @allproduct.name, price: @allproduct.price } }
    assert_redirected_to allproduct_url(@allproduct)
  end

  test "should destroy allproduct" do
    assert_difference("Allproduct.count", -1) do
      delete allproduct_url(@allproduct)
    end

    assert_redirected_to allproducts_url
  end
end
