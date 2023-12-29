require "test_helper"

class BevaragesproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bevaragesproduct = bevaragesproducts(:one)
  end

  test "should get index" do
    get bevaragesproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_bevaragesproduct_url
    assert_response :success
  end

  test "should create bevaragesproduct" do
    assert_difference("Bevaragesproduct.count") do
      post bevaragesproducts_url, params: { bevaragesproduct: { category: @bevaragesproduct.category, image: @bevaragesproduct.image, name: @bevaragesproduct.name, price: @bevaragesproduct.price } }
    end

    assert_redirected_to bevaragesproduct_url(Bevaragesproduct.last)
  end

  test "should show bevaragesproduct" do
    get bevaragesproduct_url(@bevaragesproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_bevaragesproduct_url(@bevaragesproduct)
    assert_response :success
  end

  test "should update bevaragesproduct" do
    patch bevaragesproduct_url(@bevaragesproduct), params: { bevaragesproduct: { category: @bevaragesproduct.category, image: @bevaragesproduct.image, name: @bevaragesproduct.name, price: @bevaragesproduct.price } }
    assert_redirected_to bevaragesproduct_url(@bevaragesproduct)
  end

  test "should destroy bevaragesproduct" do
    assert_difference("Bevaragesproduct.count", -1) do
      delete bevaragesproduct_url(@bevaragesproduct)
    end

    assert_redirected_to bevaragesproducts_url
  end
end
