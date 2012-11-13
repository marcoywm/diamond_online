require 'test_helper'

class CompanyInfosControllerTest < ActionController::TestCase
  setup do
    @company_info = company_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_info" do
    assert_difference('CompanyInfo.count') do
      post :create, company_info: @company_info.attributes
    end

    assert_redirected_to company_info_path(assigns(:company_info))
  end

  test "should show company_info" do
    get :show, id: @company_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_info
    assert_response :success
  end

  test "should update company_info" do
    put :update, id: @company_info, company_info: @company_info.attributes
    assert_redirected_to company_info_path(assigns(:company_info))
  end

  test "should destroy company_info" do
    assert_difference('CompanyInfo.count', -1) do
      delete :destroy, id: @company_info
    end

    assert_redirected_to company_infos_path
  end
end
