require 'test_helper'

class SurveydetailsControllerTest < ActionController::TestCase
  setup do
    @surveydetail = surveydetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveydetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surveydetail" do
    assert_difference('Surveydetail.count') do
      post :create, surveydetail: { sid: @surveydetail.sid, surveyname: @surveydetail.surveyname }
    end

    assert_redirected_to surveydetail_path(assigns(:surveydetail))
  end

  test "should show surveydetail" do
    get :show, id: @surveydetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surveydetail
    assert_response :success
  end

  test "should update surveydetail" do
    put :update, id: @surveydetail, surveydetail: { sid: @surveydetail.sid, surveyname: @surveydetail.surveyname }
    assert_redirected_to surveydetail_path(assigns(:surveydetail))
  end

  test "should destroy surveydetail" do
    assert_difference('Surveydetail.count', -1) do
      delete :destroy, id: @surveydetail
    end

    assert_redirected_to surveydetails_path
  end
end
