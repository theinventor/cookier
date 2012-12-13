require 'test_helper'

class CookiesControllerTest < ActionController::TestCase
  setup do
    @cooky = cookies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cookies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cooky" do
    assert_difference('Cookie.count') do
      post :create, cooky: { name: @cooky.name }
    end

    assert_redirected_to cooky_path(assigns(:cooky))
  end

  test "should show cooky" do
    get :show, id: @cooky
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cooky
    assert_response :success
  end

  test "should update cooky" do
    put :update, id: @cooky, cooky: { name: @cooky.name }
    assert_redirected_to cooky_path(assigns(:cooky))
  end

  test "should destroy cooky" do
    assert_difference('Cookie.count', -1) do
      delete :destroy, id: @cooky
    end

    assert_redirected_to cookies_path
  end
end
