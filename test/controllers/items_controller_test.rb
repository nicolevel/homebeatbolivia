require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get nombre" do
    get items_nombre_url
    assert_response :success
  end

  test "should get descripcion:text" do
    get items_descripcion:text_url
    assert_response :success
  end

  test "should get features" do
    get items_features_url
    assert_response :success
  end

  test "should get precio:decimal" do
    get items_precio:decimal_url
    assert_response :success
  end

  test "should get categoria" do
    get items_categoria_url
    assert_response :success
  end

  test "should get marca" do
    get items_marca_url
    assert_response :success
  end

  test "should get color" do
    get items_color_url
    assert_response :success
  end

  test "should get disponible:boolean" do
    get items_disponible:boolean_url
    assert_response :success
  end

end
