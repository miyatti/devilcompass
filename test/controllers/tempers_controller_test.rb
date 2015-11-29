require 'test_helper'

class TempersControllerTest < ActionController::TestCase
  setup do
    @temper = tempers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tempers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temper" do
    assert_difference('Temper.count') do
      post :create, temper: { PO: @temper.PO, PV: @temper.PV, name: @temper.name, note: @temper.note }
    end

    assert_redirected_to temper_path(assigns(:temper))
  end

  test "should show temper" do
    get :show, id: @temper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temper
    assert_response :success
  end

  test "should update temper" do
    patch :update, id: @temper, temper: { PO: @temper.PO, PV: @temper.PV, name: @temper.name, note: @temper.note }
    assert_redirected_to temper_path(assigns(:temper))
  end

  test "should destroy temper" do
    assert_difference('Temper.count', -1) do
      delete :destroy, id: @temper
    end

    assert_redirected_to tempers_path
  end
end
