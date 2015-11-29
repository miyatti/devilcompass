require 'test_helper'

class IdeologiesControllerTest < ActionController::TestCase
  setup do
    @ideology = ideologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ideology" do
    assert_difference('Ideology.count') do
      post :create, ideology: { A: @ideology.A, B: @ideology.B, C: @ideology.C, D: @ideology.D, name: @ideology.name }
    end

    assert_redirected_to ideology_path(assigns(:ideology))
  end

  test "should show ideology" do
    get :show, id: @ideology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ideology
    assert_response :success
  end

  test "should update ideology" do
    patch :update, id: @ideology, ideology: { A: @ideology.A, B: @ideology.B, C: @ideology.C, D: @ideology.D, name: @ideology.name }
    assert_redirected_to ideology_path(assigns(:ideology))
  end

  test "should destroy ideology" do
    assert_difference('Ideology.count', -1) do
      delete :destroy, id: @ideology
    end

    assert_redirected_to ideologies_path
  end
end
