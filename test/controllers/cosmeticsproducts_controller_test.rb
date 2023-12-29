require "test_helper"

class CosmeticsproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cosmeticsproduct = cosmeticsproducts(:one)
  end

  test "should get index" do
    get cosmeticsproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_cosmeticsproduct_url
    assert_response :success
  end

  test "should create cosmeticsproduct" do
    assert_difference("Cosmeticsproduct.count") do
      post cosmeticsproducts_url, params: { cosmeticsproduct: { category: @cosmeticsproduct.category, image: @cosmeticsproduct.image, name: @cosmeticsproduct.name, price: @cosmeticsproduct.price } }
    end

    assert_redirected_to cosmeticsproduct_url(Cosmeticsproduct.last)
  end

  test "should show cosmeticsproduct" do
    get cosmeticsproduct_url(@cosmeticsproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_cosmeticsproduct_url(@cosmeticsproduct)
    assert_response :success
  end

  test "should update cosmeticsproduct" do
    patch cosmeticsproduct_url(@cosmeticsproduct), params: { cosmeticsproduct: { category: @cosmeticsproduct.category, image: @cosmeticsproduct.image, name: @cosmeticsproduct.name, price: @cosmeticsproduct.price } }
    assert_redirected_to cosmeticsproduct_url(@cosmeticsproduct)
  end

  test "should destroy cosmeticsproduct" do
    assert_difference("Cosmeticsproduct.count", -1) do
      delete cosmeticsproduct_url(@cosmeticsproduct)
    end

    assert_redirected_to cosmeticsproducts_url
  end
end
