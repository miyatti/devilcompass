require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { A: @survey.A, B: @survey.B, C: @survey.C, D: @survey.D, q01: @survey.q01, q02: @survey.q02, q03: @survey.q03, q04: @survey.q04, q05: @survey.q05, q06: @survey.q06, q07: @survey.q07, q08: @survey.q08, q09: @survey.q09, q10: @survey.q10, q11: @survey.q11, q12: @survey.q12, q13: @survey.q13, q14: @survey.q14, q15: @survey.q15, q16: @survey.q16, result: @survey.result }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { A: @survey.A, B: @survey.B, C: @survey.C, D: @survey.D, q01: @survey.q01, q02: @survey.q02, q03: @survey.q03, q04: @survey.q04, q05: @survey.q05, q06: @survey.q06, q07: @survey.q07, q08: @survey.q08, q09: @survey.q09, q10: @survey.q10, q11: @survey.q11, q12: @survey.q12, q13: @survey.q13, q14: @survey.q14, q15: @survey.q15, q16: @survey.q16, result: @survey.result }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
