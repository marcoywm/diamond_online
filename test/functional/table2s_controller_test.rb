require 'test_helper'

class Table2sControllerTest < ActionController::TestCase
  setup do
    @table2 = table2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table2" do
    assert_difference('Table2.count') do
      post :create, table2: @table2.attributes
    end

    assert_redirected_to table2_path(assigns(:table2))
  end

  test "should show table2" do
    get :show, id: @table2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table2
    assert_response :success
  end

  test "should update table2" do
    put :update, id: @table2, table2: @table2.attributes
    assert_redirected_to table2_path(assigns(:table2))
  end

  test "should destroy table2" do
    assert_difference('Table2.count', -1) do
      delete :destroy, id: @table2
    end

    assert_redirected_to table2s_path
  end
end
