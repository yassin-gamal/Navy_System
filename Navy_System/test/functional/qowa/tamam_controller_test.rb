require 'test_helper'

class Qowa::TamamControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get report" do
    get :report
    assert_response :success
  end

end
