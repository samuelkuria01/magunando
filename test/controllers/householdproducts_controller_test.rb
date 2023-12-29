require "test_helper"

class HouseholdproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @householdproduct = householdproducts(:one)
  end

  test "should get index" do
    get householdproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_householdproduct_url
    assert_response :success
  end

  test "should create householdproduct" do
    assert_difference("Householdproduct.count") do
      post householdproducts_url, params: { householdproduct: { category: @householdproduct.category, image: @householdproduct.image, name: @householdproduct.name, price: @householdproduct.price } }
    end

    assert_redirected_to householdproduct_url(Householdproduct.last)
  end

  test "should show householdproduct" do
    get householdproduct_url(@householdproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_householdproduct_url(@householdproduct)
    assert_response :success
  end

  test "should update householdproduct" do
    patch householdproduct_url(@householdproduct), params: { householdproduct: { category: @householdproduct.category, image: @householdproduct.image, name: @householdproduct.name, price: @householdproduct.price } }
    assert_redirected_to householdproduct_url(@householdproduct)
  end

  test "should destroy householdproduct" do
    assert_difference("Householdproduct.count", -1) do
      delete householdproduct_url(@householdproduct)
    end

    assert_redirected_to householdproducts_url
  end
end
