require "test_helper"

class FoodyproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foodyproduct = foodyproducts(:one)
  end

  test "should get index" do
    get foodyproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_foodyproduct_url
    assert_response :success
  end

  test "should create foodyproduct" do
    assert_difference("Foodyproduct.count") do
      post foodyproducts_url, params: { foodyproduct: { category: @foodyproduct.category, image: @foodyproduct.image, name: @foodyproduct.name, price: @foodyproduct.price } }
    end

    assert_redirected_to foodyproduct_url(Foodyproduct.last)
  end

  test "should show foodyproduct" do
    get foodyproduct_url(@foodyproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_foodyproduct_url(@foodyproduct)
    assert_response :success
  end

  test "should update foodyproduct" do
    patch foodyproduct_url(@foodyproduct), params: { foodyproduct: { category: @foodyproduct.category, image: @foodyproduct.image, name: @foodyproduct.name, price: @foodyproduct.price } }
    assert_redirected_to foodyproduct_url(@foodyproduct)
  end

  test "should destroy foodyproduct" do
    assert_difference("Foodyproduct.count", -1) do
      delete foodyproduct_url(@foodyproduct)
    end

    assert_redirected_to foodyproducts_url
  end
end
