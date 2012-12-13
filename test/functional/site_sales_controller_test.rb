require 'test_helper'

class SiteSalesControllerTest < ActionController::TestCase
  setup do
    @site_sale = site_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_sale" do
    assert_difference('SiteSale.count') do
      post :create, site_sale: { end_at: @site_sale.end_at, location: @site_sale.location, start_at: @site_sale.start_at }
    end

    assert_redirected_to site_sale_path(assigns(:site_sale))
  end

  test "should show site_sale" do
    get :show, id: @site_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_sale
    assert_response :success
  end

  test "should update site_sale" do
    put :update, id: @site_sale, site_sale: { end_at: @site_sale.end_at, location: @site_sale.location, start_at: @site_sale.start_at }
    assert_redirected_to site_sale_path(assigns(:site_sale))
  end

  test "should destroy site_sale" do
    assert_difference('SiteSale.count', -1) do
      delete :destroy, id: @site_sale
    end

    assert_redirected_to site_sales_path
  end
end
