require 'test_helper'

class PlannersControllerTest < ActionController::TestCase
  setup do
    @planner = planners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planner" do
    assert_difference('Planner.count') do
      post :create, planner: { email: @planner.email, name: @planner.name, password_digest: @planner.password_digest, phone: @planner.phone, zip: @planner.zip }
    end

    assert_redirected_to planner_path(assigns(:planner))
  end

  test "should show planner" do
    get :show, id: @planner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planner
    assert_response :success
  end

  test "should update planner" do
    put :update, id: @planner, planner: { email: @planner.email, name: @planner.name, password_digest: @planner.password_digest, phone: @planner.phone, zip: @planner.zip }
    assert_redirected_to planner_path(assigns(:planner))
  end

  test "should destroy planner" do
    assert_difference('Planner.count', -1) do
      delete :destroy, id: @planner
    end

    assert_redirected_to planners_path
  end
end
