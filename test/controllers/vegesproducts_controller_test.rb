require "test_helper"

class VegesproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vegesproduct = vegesproducts(:one)
  end

  test "should get index" do
    get vegesproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_vegesproduct_url
    assert_response :success
  end

  test "should create vegesproduct" do
    assert_difference("Vegesproduct.count") do
      post vegesproducts_url, params: { vegesproduct: { category: @vegesproduct.category, image: @vegesproduct.image, name: @vegesproduct.name, price: @vegesproduct.price } }
    end

    assert_redirected_to vegesproduct_url(Vegesproduct.last)
  end

  test "should show vegesproduct" do
    get vegesproduct_url(@vegesproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_vegesproduct_url(@vegesproduct)
    assert_response :success
  end

  test "should update vegesproduct" do
    patch vegesproduct_url(@vegesproduct), params: { vegesproduct: { category: @vegesproduct.category, image: @vegesproduct.image, name: @vegesproduct.name, price: @vegesproduct.price } }
    assert_redirected_to vegesproduct_url(@vegesproduct)
  end

  test "should destroy vegesproduct" do
    assert_difference("Vegesproduct.count", -1) do
      delete vegesproduct_url(@vegesproduct)
    end

    assert_redirected_to vegesproducts_url
  end
end
