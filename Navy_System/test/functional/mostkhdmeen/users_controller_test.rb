require 'test_helper'

class Mostkhdmeen::UsersControllerTest < ActionController::TestCase
  setup do
    @mostkhdmeen_user = mostkhdmeen_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mostkhdmeen_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mostkhdmeen_user" do
    assert_difference('Mostkhdmeen::User.count') do
      post :create, mostkhdmeen_user: { address: @mostkhdmeen_user.address, blood: @mostkhdmeen_user.blood, group_id: @mostkhdmeen_user.group_id, job_type: @mostkhdmeen_user.job_type, military_number: @mostkhdmeen_user.military_number, name: @mostkhdmeen_user.name, near_relative: @mostkhdmeen_user.near_relative, note: @mostkhdmeen_user.note, password: @mostkhdmeen_user.password, phone: @mostkhdmeen_user.phone, rank_id: @mostkhdmeen_user.rank_id, start_date: @mostkhdmeen_user.start_date, status: @mostkhdmeen_user.status, tag_date: @mostkhdmeen_user.tag_date, tas_date: @mostkhdmeen_user.tas_date, type: @mostkhdmeen_user.type }
    end

    assert_redirected_to mostkhdmeen_user_path(assigns(:mostkhdmeen_user))
  end

  test "should show mostkhdmeen_user" do
    get :show, id: @mostkhdmeen_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mostkhdmeen_user
    assert_response :success
  end

  test "should update mostkhdmeen_user" do
    put :update, id: @mostkhdmeen_user, mostkhdmeen_user: { address: @mostkhdmeen_user.address, blood: @mostkhdmeen_user.blood, group_id: @mostkhdmeen_user.group_id, job_type: @mostkhdmeen_user.job_type, military_number: @mostkhdmeen_user.military_number, name: @mostkhdmeen_user.name, near_relative: @mostkhdmeen_user.near_relative, note: @mostkhdmeen_user.note, password: @mostkhdmeen_user.password, phone: @mostkhdmeen_user.phone, rank_id: @mostkhdmeen_user.rank_id, start_date: @mostkhdmeen_user.start_date, status: @mostkhdmeen_user.status, tag_date: @mostkhdmeen_user.tag_date, tas_date: @mostkhdmeen_user.tas_date, type: @mostkhdmeen_user.type }
    assert_redirected_to mostkhdmeen_user_path(assigns(:mostkhdmeen_user))
  end

  test "should destroy mostkhdmeen_user" do
    assert_difference('Mostkhdmeen::User.count', -1) do
      delete :destroy, id: @mostkhdmeen_user
    end

    assert_redirected_to mostkhdmeen_users_path
  end
end
