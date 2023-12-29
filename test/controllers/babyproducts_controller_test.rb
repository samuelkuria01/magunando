require "test_helper"

class BabyproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @babyproduct = babyproducts(:one)
  end

  test "should get index" do
    get babyproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_babyproduct_url
    assert_response :success
  end

  test "should create babyproduct" do
    assert_difference("Babyproduct.count") do
      post babyproducts_url, params: { babyproduct: { category: @babyproduct.category, image: @babyproduct.image, name: @babyproduct.name, price: @babyproduct.price } }
    end

    assert_redirected_to babyproduct_url(Babyproduct.last)
  end

  test "should show babyproduct" do
    get babyproduct_url(@babyproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_babyproduct_url(@babyproduct)
    assert_response :success
  end

  test "should update babyproduct" do
    patch babyproduct_url(@babyproduct), params: { babyproduct: { category: @babyproduct.category, image: @babyproduct.image, name: @babyproduct.name, price: @babyproduct.price } }
    assert_redirected_to babyproduct_url(@babyproduct)
  end

  test "should destroy babyproduct" do
    assert_difference("Babyproduct.count", -1) do
      delete babyproduct_url(@babyproduct)
    end

    assert_redirected_to babyproducts_url
  end
end
