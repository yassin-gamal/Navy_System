require 'test_helper'

class Qowa::VacationTypesControllerTest < ActionController::TestCase
  setup do
    @qowa_vacation_type = qowa_vacation_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qowa_vacation_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qowa_vacation_type" do
    assert_difference('Qowa::VacationType.count') do
      post :create, qowa_vacation_type: { name: @qowa_vacation_type.name }
    end

    assert_redirected_to qowa_vacation_type_path(assigns(:qowa_vacation_type))
  end

  test "should show qowa_vacation_type" do
    get :show, id: @qowa_vacation_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qowa_vacation_type
    assert_response :success
  end

  test "should update qowa_vacation_type" do
    put :update, id: @qowa_vacation_type, qowa_vacation_type: { name: @qowa_vacation_type.name }
    assert_redirected_to qowa_vacation_type_path(assigns(:qowa_vacation_type))
  end

  test "should destroy qowa_vacation_type" do
    assert_difference('Qowa::VacationType.count', -1) do
      delete :destroy, id: @qowa_vacation_type
    end

    assert_redirected_to qowa_vacation_types_path
  end
end
