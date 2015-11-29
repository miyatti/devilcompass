require 'test_helper'

class DevilsControllerTest < ActionController::TestCase
  setup do
    @devil = devils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devil" do
    assert_difference('Devil.count') do
      post :create, devil: { LC: @devil.LC, LD: @devil.LD, OP: @devil.OP, PV: @devil.PV, name: @devil.name, note: @devil.note }
    end

    assert_redirected_to devil_path(assigns(:devil))
  end

  test "should show devil" do
    get :show, id: @devil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devil
    assert_response :success
  end

  test "should update devil" do
    patch :update, id: @devil, devil: { LC: @devil.LC, LD: @devil.LD, OP: @devil.OP, PV: @devil.PV, name: @devil.name, note: @devil.note }
    assert_redirected_to devil_path(assigns(:devil))
  end

  test "should destroy devil" do
    assert_difference('Devil.count', -1) do
      delete :destroy, id: @devil
    end

    assert_redirected_to devils_path
  end
end
