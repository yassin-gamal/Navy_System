require 'test_helper'

class Qowa::VacationsControllerTest < ActionController::TestCase
  setup do
    @qowa_vacation = qowa_vacations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qowa_vacations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qowa_vacation" do
    assert_difference('Qowa::Vacation.count') do
      post :create, qowa_vacation: { from_date: @qowa_vacation.from_date, note: @qowa_vacation.note, to_date: @qowa_vacation.to_date, user_id: @qowa_vacation.user_id, vacation_type_id: @qowa_vacation.vacation_type_id }
    end

    assert_redirected_to qowa_vacation_path(assigns(:qowa_vacation))
  end

  test "should show qowa_vacation" do
    get :show, id: @qowa_vacation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qowa_vacation
    assert_response :success
  end

  test "should update qowa_vacation" do
    put :update, id: @qowa_vacation, qowa_vacation: { from_date: @qowa_vacation.from_date, note: @qowa_vacation.note, to_date: @qowa_vacation.to_date, user_id: @qowa_vacation.user_id, vacation_type_id: @qowa_vacation.vacation_type_id }
    assert_redirected_to qowa_vacation_path(assigns(:qowa_vacation))
  end

  test "should destroy qowa_vacation" do
    assert_difference('Qowa::Vacation.count', -1) do
      delete :destroy, id: @qowa_vacation
    end

    assert_redirected_to qowa_vacations_path
  end
end
